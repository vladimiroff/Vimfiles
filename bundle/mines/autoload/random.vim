" Linear congruential generator
let s:value = localtime()

function s:next()
  let s:value = 1103515245 * s:value + 12345 " constants like in glibc
  return (s:value + (s:value >= 0 ? 0 : -2147483648)) / 65536 " chop off last bit and use next 15 bits
endfunction

function random#nextInt()
  return (((s:next() % 128 * 256 + s:next() % 256) * 256 + s:next() % 256) * 256 + s:next() % 256)
endfunction

function random#randint(a, b)
  return a:a + random#nextInt() % (a:b - a:a + 1)
endfunction

function random#shuffle(a, n)
  for i in range(a:n)
    let j = random#randint(i, len(a:a) - 1)
    let [a:a[i], a:a[j]] = [a:a[j], a:a[i]]
  endfor
endfunction
