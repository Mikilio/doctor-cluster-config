{config, ...}: let
  m00wlKeys = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKj82MjggZ8uEbi/1cITRA84Ou2I6TYfCPfFHwhXm2Tx moritz.lumme@tum.de"
  ];

  paulKeys = [
    "ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBEBXRWrVa4+O0OulhfKo7US7baIVO7b3NqhBYJ8O4Bg+MFQj8lwcVkgteia9K0VYV4xJbzdyBlrHk2LXsN/SBkI= DSE@secretive.Paul’s-MacBook-Pro.local"
  ];

  jrKeys = [
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDYva//qGT0//ljbMjZjX1ugxQjHJir8/Qp1yxy8ZDFCY7rwLi15M69/ZQ8NplU53bkW4ezqkf9CON80NpzfGTuyi7FO28JeWbHovyyHymkUM2wcFjAXOjQKgXz7NRKswZSDAdjZcX7nxHoqY4yI5fBy/9yYNrcdvKZ8NcCGFyhHQijdLUwo4hfOWKIHp4j4tLjQ0T7nKHmcuE+o5xr54EZpAvhQgyPFxrxYiLxX08ksDCykWocgJIiEDVBpw58vTQJxWzRMab/AnWs2FesKOKOfzy9wXa3ze++kb0WVzairhxj5lI2MUAZiE8nCEGBy7jiIDsQ3CaWMFpfvQHnvkd5 jasper@debianj"
  ];

  mfKeys = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINK0/PSpRypoFe8NQ1BHjCyxraIvhX/0q6OIO7DYnmyq Martin Fink"
    "ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBCshvYXlVtnaApJlB5BFhfZLWXnY4/9JKdNf3PFuPV8ZKU2Ssk7uAR5O5COVKDb9HnvArF7v+eoxKFmhwGXnlEU= Martin Fink"
  ];

  alexaKeys = [
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCmhBDhr9rXPSzt9xi29btIYlpBqePI3JGWYrR7EJc3BBSChIHBkWfaseannbSn4rFG7YV6kVdW7Kx7n1q5bXVOllCC1IeEDBIJg9mdW9nUw8pyG0o2gI8jcgitLSgB6M+dEAHHGh+OSkQXDdRN1RpnRslfPvVAGWpqWcmLxSK8PCI389yXsXTe605OC1wEtFe3dsYqHmA/C960AH0RJXGquM82Vw64/4ORySWRPjNlHHgvYUBuWaQFaM3JoouWQA5LhpIdNLP3HyWISXuEgOMEgCbmw9EEx2EQwD9OaWivQ7W65neNu1NgcFZBAegRAI9ATNl5bW8UiUmrNyZQm4WNuvNsBJbepRIPH25YqTWLZf8kMk0L8+VSa2Rb/9Jyf15qexme1KuaSfJUX2kFRlrW2ADEM+cT99gzh3EJPhu73Ev0N4ibJd4tdjY3mHlSrIXIkN2VbiBV4xss99ebMvkNjpLhHZvkM4a25arQfj/ROdevMbzVu5sxsKRkaMd0/mc= alexandrina@DESKTOP-8HD3TSS"
  ];

  julianKeys = [
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDZs04queaSB/BGQesCEiunOkeEydB5rJ2WUXSrGlDLVoJ6/Q7fAHM99200fxK7h0vtKda4OkdUEBtRtq2wn+Z0YW51mFvzJ7214ZIY4JKtYX02KW8r7gVXYmjoX3VWEKi5iKfld0WO9jaDN3InU5CYyYx1nHl+BNasxIHtUzjhHCC+Ggxt3Kc+IxW2DV8J9/JwhKhgedqvqbc93+V05/UeYwG0Q9z1mwBEuOlGv8yP6uhCWmHzxbJYo+oxU5nSXM0lPHecxa7M8hROXEVrSxg27vUg7JoiSQ1wt3lzNQS4Abd8JLqOJlQYQvbz5Xxd0KhD0kaBCptXBCxdOo+YLi06XNs16rRtQPM51jTrero3h1wfA51XR7w7j52nbLC2ZGMyaSO1c5IQ5d5Xad/F1ZcOQQWvFhK+ie9LJzvR0AXiFXzEBvmPiZ82rLdjWGPO4975fSYTOxshZojk7oV4fQyd5vKCsjChL0JC2chPfYRv2kti/9CVqVseznVMPE/JgdE= julian@mind"
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCkHALCUCursw1AvmYaQLfYBee1lGR4sqqlTEHfatyAqQrCxFnWNnO03ScEfNsDQKDZPRQ/RZYOOHlNxoKQzYaHlpbFafePKNH+lKZWibabp4HT3ho0mi56i2sqXLSMP+y3nz4S7vx678CVgyK1/gW9wB0ORNh1Ss1NqPhi/DFxHVxcLig3mjCVoC6QzIzTLq8uVP/bOD2jtED/PSdAFQQNd2RjKWea7UjjH7IiQvvJHwl1OB8X1x7mxwuQuHCMj7kwwKfEEvqOy3NiDzY9Ewc7HihFLkROMK3obbYLoQjYf/tP9SYpekWx4Q8CpgmvAblwDcv8unmnYAN2Cj5PQ4YulBPCOwNfmVCvsp3gX8eLG6XNYjnHt7DIEm8Yj4EeSCuB6DLOR2Em5eKH57qzQFHyubdIwVoY1xzfdd1wzaKuL+ahoLKmZ23Q6bK795BwZBogyoceREg9surF9P8l9mJi2Yn8aGMtCF9ecIySNGYwI1AqKGYX14Vo9HA3nfADCI1wCND5LyqD6UDGfM1iBV38gGl05jyywcTgpctI4ryQy6SUDf9x+CZuDwHXihR6Rj9Oj1Vy6zFdCKq4xt76xCsIPuy+6CY4RdOkCNmQn3NKeRnttLmyYIpLbHkTdYs8GIyLsf1mz6uHZNcWg5fwPTabgT8PJ5yJRQo9IoXGawf+vQ== julian.pritzi@gmail.com"
  ];

  mwerndleKeys = [
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCsZ8xTt0Ti6evYqvLBMXLaExS0SP0KZB7oSA7RO3tQinlVT62KIxJ5NXxrKgCOy3evCtN+fqYFvshGHZ6/FPcOj3i3PfJRHaj6WjQicIIfVFEbfLtzh2QxDDVXBkfh747fBmPHrfXJwxCRjRpSwYBmDBcJVjH3weHLqVm6f4SioDWMZ8arCYipZSPlfCFvcqR532ipiKQH3pHinjtopLMLmZnZQeXOsK1lsIDLs7/onkK1cNhCeX7Hq69N7gp/2AYUoXjnZ2/vvDq6QAofz5jASDjPfZz1eHdz4owc6I+LoAc76QxE/37mV6PCiGO4YiQji8byvjuIq94moOMfIDkj teppichseite@DESKTOP-NRKB54G"
  ];
  
  mfaltusKeys = [
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCk/FU+8EXhfm16DuOuC/9WJT8O2zkRscjVUVZNqjcYhelJbnzcYcnLdkwcnTik8qwrgj5DKI2N0I+RuoZuqGo9q5FlRuvv+GHDuaB8UVjhJrmm9vpTy8Eng52AlttJAOLKhnJQ1BidqvKXD93RGba5S2a0AK0Pdqm7z029RkGNo2zUp5rnuLQmmeitIej7vdZmxx1sk5cYiYBLScwOl7whK7O7ymFQtGQjRB8OC2apAAJ6GVNtoCYbZ71vsHoVKYRD2laHfWpJ3zcE89MWtRxtAjNxSNTB9ZkJLND73NBQtBUt9et4R54hCPbiJgMnWV00LQbfWl9+FrE1yJQA3pJsV8ceqNFC6z4Get6XCOHr4sK129Ww2vTgORHXr+QCMwV0ejeTYOk+ypQG4pFjzM1b2c8RXIT4V9jE16FdGzss2z7Ic9lxtzCJdsA7lg3jrvSpr8zAzoUez+Z2pP9QUAMMb6Q4EqU3sWQn6pHUqP4Lpzb5WGWAn9AMd2qB0sVuJQheYDRsuo4OidLtiOEj+IHkrRGNuAAtbLvFinaouqhYdHKiizX+ddTTl3hGtoD2cX3MixhHCy1LypL08VmORL/yUI90uHkqajWCwNnOLABx/Sa+ZSkTHsAilEkU1TvO9aox2iMbsc1nZwilaBR+onvHP2x0d94BTGHRV3al34BhJw== marcel@Desktop-17"
    "ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBK37Hp7Tjuqjm9iGBJL6/GIqNZRN6NSQD4SKomAAL+Zjx7UV+HXX19hruvRdkjz/RNeU27vYthrKwtfqIggzEiI= marcel@Desktop-17"
  ];

  gierensKeys = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBevyJ5i0237DNoS29F9aii2AJwrSxXNz3hP61hWXfRl sandro@reaper.gierens.de"
  ];

  heKeys = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJgQ10239M1Ehw6nmY7mFxGyqfpCkfSHAjZzSZZZ7NLA"
  ];

  vandaKeys = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIFHNFtsaHwUsqyiDn4MHVxmAPSgGkSODvPoUX71XWMMD vanda@arch"
  ];

  mikilioKeys = [
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCZAI0TEuR1dVXq214bv6mn6QLNfYMPJWh5HwfpzM8YRGJSaHUvPadi8IvcLgN3CtXcsEkTPt36VgWX49L0V59uJ8K4CpH/Ry7gEqU4uHZlBySUercvLyrqM7Eq5YcHkntFsbB/xqrhharkxtv3vYbvYhQpgOlcdA1g2cxG2wtNA5icg6vV1UDsyiAyibHgIIVZ9fvCqWhf9bZz6wjrLmmklTF3SqByteil2BpS57mv5JvRQx+RFIXeg3ciuT35uY7v5TAuRkRC0yoTVjpEDISHKOc8JNAZSgUXHdFj5XYQ/APULDa71hmSZNq2A2Gkf+sRwU5Evou5MqWGQ55jaiZ9r2Hedbd33BP97/MzH1OPDdHK/R9vrJX7+ZSsncUjO0sSkUTKajk5H2jB1gq8c+SeldZGLSBPl6mzk3a1aPgV5MpPXm7EvPa1dQccWZTZZKUuuA2gPyVMO9f7XBZRcYCdColS6Kj/fbq7Lg+XhgRVz53BShBQuP0Qtvcf3XWyEQ0= mikilio@nubara"
  ];

  yiheKeys = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJgQ10239M1Ehw6nmY7mFxGyqfpCkfSHAjZzSZZZ7NLA"
  ];

  yiwenliuKeys = [
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDRyucUSzY0R13Aykigj6quuV4iV2qcwKv3A21HtOiqxZZtmk0mb555EvteqkIE7xSuFMQza+Y9ccJ6iQb0NZlCFCnq99r+9rEiCjzE6V7jcOeAJnqJabbSWo/4KbrQCoRF8Tdvp1ghf47mzyoLFfZy4hGjCJabIcE3lIjhiVUqDVYR6yjROGF11aHcDbloQnj8QIBujl+s/JE849tEW4bNvRmZJlmY0vAwH0OE8JTjcDSiBZlTINhw+VDN8MsKFitrtc/Nc9tgN1lDsMLn9kZo3p7ySKCFYb5X/iYDWejfKhedFsjpEUSCfc/LNevFkd9/BuLForjlLqKLNr5q2EbP yiwen@liu-HP-Pavilion-Notebook"
  ];

  hanwenliuKeys = [
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCg4q6+mU1KxqSVKSV4aI3AS4OY13l5nCoNIpo6ZKdgsZHbTtu00+fdQod7RBbDGRuNuVcwnCDgSvwo+BZDNw0txk/jnewoBKWJYOsoidLatMcoL2KL2hNBpUDXFaMd1IdC3bT8PRF0mvms3DMovKgAcFdgDz49KXyd/Djtm44v+Ck5yl4EZLUDg871yuWCzeQEqEiECxcoIceRAng1SomE3KM5ew+rbkHnVIusieQwTFWvbeE8tisVFg/zl6WlH9rybV61LbTHHci0NaY7hN0cDP8XrYkFbCfoHVkgQ0aYm5bH6a41IwVuoyJtLHBH8TP/KwHAhlVmKMix62jkjL94it9vf3EBCZWcfD42RZIWMcbd9PkQKuuYMwyHEeE0+oXfAVppS1noyVub9DAh2oKEwKbQ1Zw2EHs4ooMm3HeaE4k2xB5cZzeIA1MmdEwknD8cwC43+QeZu8rq5YDe2Bo3djGLB/SGFwx2wiwsKsAPxbwRIAer/S2Iy5bKtsiyLL8= hanwen.liu@tum.de"
  ];

   wonbangseoKeys = [
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCfkMY+WghQqHDM+GmJa/oaH7zQiHHYsZ3cLZtexZDIJn/Vlkj3zEvaLhTL7IpQ7PFiwPdIMeO17csvIqTzqaaoqXkFDD+YZKGlFhPoj14yrHxAOuXuaw0Fxg+RhfW0VyHKQ56ZvBvgRm5IcosTtdjl9jYrUjAQP61KJQXxTWYXH0V4Vhg3CbAf9rs2oevDtYp3AMrWkU3vpvzEamCyn4C9c/TvGORYUlWsqfbT1Y6hEmsZZnpIVNTsD6VVGVAf9TzDM/rb4vozui5A6YWG/JRv2Q/fW49WAOQGOWFD32v3bVhsagE9kG7bIayYCw2Xjalgj6qKJLmK1ZdUHj4ui+StGY+Y/LlAyLgcVmiL51UaXPcMCcZBA5LZFbtBEA2Z4B0sqe0063Hur367f07VhW3vkE6ch983j8rJQPemerciEYCqtMH9lGtk+yNMOAmCD7Je0D/dvYhPUxVaBtJqU4ZnpnZvRXHUasKjYQQ7Jaltw/YMkoXT9ml73sMA90apQSM= wb1@WB1"
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDi+2LI5v/Z8LxMPyT7hg9cZSOzJuFLSRpTz0f1YSdYpR+2M8Tsqdnx49q19o+zEGman5uQnwoBhwYW6nZE/trL07wnA0YL4i/j+Ze6cDrzc50GluHuwFr7pffI8tDS0x3twme+qUaDeWYiT6M6D69XS11lJ6hiORSXy60usmr2+7r03vpFGCh39Mbj9xy4+PHnqUJ7EQAHsCOvTLUPlTPwcmAY4pk0MUq4DF0Xqrcgwh+nU6GxCz23vobIv6jnlWsOCWYhZoDy+aSPy+iVTv9z9WqFnMVrVTrsPpeM6pEJUA9I89iSWkcS/YIaFiZNCjPoARRwDQ0nSQga6is6EbSkBvCo2i0r5uEYWRm9lJlXiyyTtpow34TobDzOLkOOAHi7yYMkDyms0N4kpACpz+C7vbthFwgm3Pa+2QNuvyQhnxzVSJFSLFWgMhL8ridY42kEMvRVkXmZOerTne6rMMCNGO+BKH0mat4SPJppdeWfUlEwViCOtBvl6ftGAYPpsSh3Z66FZfbRfckBZeID44LAtXoCjyNUOURnXTVykuCnF8A5sI7wEo+LSEaE29Dp5XRmWO1AkcuHzXxQwqQh1ufyLYs2wQJA89ZqruZjxRrMUPERBoaTRMq7waAF9OYGNpBfvAFmj4QNGJC8GRVCo94hCy7X/Ob6Ple8CUDq/pQKgQ== ge59lal@mytum.de"
  ];

  justusvonderbeekKeys = [
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCZ1fwee0DxjsLZwHQ+sOY40LKaqW3PCRVo0B4QJiRbd9Ka4fHNpuzTyBLup7pylHNg5Ne3iPDLsXEdDJ8Swxvo5vHymVlt62e8QwZ+w+356WxWh3IULre3RaHV+xPcUTGkNNsc5njpoYD+HO+3tFpA8l0iNmAnlY1JsnvheOAEJZjLrL5fOJ7lYB5MKBJXvEdx8bIiMT0nc2lm2BVJ6oAgr50xZcO6dnsirrkibrrF2ybVAs8aZzFA8eysNZR5AEkFvUntb6ofVjpxc/kEd+kR04ZmZ0gzn034XIQltj6rx4ZjKmcyUCngYEKBs/VY7ab6YF1gEAt5f45KeEQXGjxGx0WOyBVho12Qy2tKErIxPsC0Kiar8mws/YzfyHs6e1mLu71CHL+hlqHus2aWB+zYJAq5CTr2Dfac2TZsbRd5MoX6wDnvwkNHXi0YIeWE21zHUSiT0T1GzqPHFciODXnw3xRnjHRXJNm08XNg55L7c57HhR53r9IbkCmnDaF9/30= ifrit@Athirat"
  ];

  rohanfernandezKeys = [
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDxbfLSRqS1IZ+O0StdQsGicjg80g8+yl/FuOBtiQg/szup7zdh2LSXjYFHyrigPgoEG0Pxy2nPoH2JBdZnUcbNiNBymxE0nvfrHbx0In9L13qay2hNCkhglb7ct+ixFaJA1kI0mOAI1jDhMF4Vt9iVPEVFwlN3Do4L7/vua6qANuZRWQL2o100YP3hL55FtesD48A9wYP1WppW6FeHH2t3X28vJ07U6VAr1C/A5a9CrmjMEn4aT9ehwpZKB3cxLEyApy4c6DZ/UOCfkeSSC2ynVxXRg7TjihTizVyx8ao7CLo6axdK67a3WGj77TTp1HiAlqIfzjOWNEcOOgaIS4bV rohan@rohanpc"
  ];
  
  alexandermaslewKeys = [
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC+MkgMHv3xj3XbUNqJELn+XZldVZkbGuhvO6kRRGLxJYJ5W+te3rPxlmOQuSQfR+05HNVufjS8ECt7d+DZGtNDViHl/AoY+0DDhMypqyM1KOsaWHwVBH2+wrLvHrT42Z7EmUShQN1HJXYWZ3wF7qTgvt4DxjTLD2UKZti+tKvXGHx+xtfGIBncei4rgU/jia2p9yrExXeoa+KBs0bdGCdfA3ZYsDaYTrcD0adQibp3sf3iu+q7Hq33+91up5uAKDyG2wCDpkSug/Vr4uzkn9v7glQGaJHqOcDDVi92qIoa4yev4b7K7H9f8ryi98YRpo2kJj+W/GC2lnUEf9IVbClWcgwYmmMzG+1Xw8a4BFhL7Hng2cgTMUiOGKJCUo5a18cdWJVkOyipETGehR/g3RrtVIdBmbz/AK37ey91f1MEbp5+fbs/m6DXBVeM4FIkV0Tp3JjXjQKCaO/AHLewUCbmDXZg5CSkBjLkiiGdcSFz7QDXqi2ZRku7PatKXahMb1U= alexander@alexanderpc"
  ];

  zixuanliKeys = [
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDTmd2gn+3gkDc6kSJIO80Ud9FZlC8tMDtvKQx/KNmsPPk9pPtD0Dlgkvbus1pqSD4ijDGefm7sqr6LzAuD1160sADMI7+1iIRDiamrJo2NXCv1UYxihR16WPnM+2Kn0SCOx+mzclAJGaLMEik1+ASaCnaWVr/EovksDiUP/Ii+q863O9wBQ5VULKbOtbQXr7X4V4McBXPW7GT8n2dybbRdt1t3NPDCxxtDidD5D17mN63NS2cVLKnKp7TV5bH9OLe2DAzeQTs5B1vIdkiIpA7nVWGx+km560DrWvU5L68UJirI9vS6vHwhta6C5EONHusgaDZpM5CiIDhyDmIcEaa/dz7u3lnzpbZhq01OpPM+/lsDhSyJh5LxNTHWZAAQrEudgi0iJ9zdUjRdo7MyrpgsiTFoyFN5CVnq0Q5ZqWiREHfr5SKZxz6DpHMvoHgpn6TX206dzMeqquRgNz0mpInPEMKjIfVbh6EHz+1VJj1pjqWX7YFAxm3JsstaVyY6HrU= zixli@Zixuans-MBP.fritz.box"
  ];

  jonasKeys = [
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCklke4DPtQ3FaOyEF7bFncskfGayXfTOoP5LRbwP0L+J33h5iZGWrP8ejL2NpAgt/TAbt6G6e/hAkraShcW8XaiN3woPyhY9fuKLjf8JGQGFX6Vh33KHDWxa/v70pyai8iWS6XgTzcdymcQLypRSDgpAlEYmG8tc4sHFKsQX+e/2a5PHG19+6MgPcn1ipYyj/I3EV3WlHcf7TZvANBtW7pNQJUeZ4zMibvl2kHrzJJyLQhowBJqLp8D9z/MTmyPbQYzUTE+4DFDiV2O2enax8lgTsiuP4HDfmIzv4qXxbZZoxiLhw4N+OiVSRbUkC5nWBW7e9k6gIpT0QR5+JAXPD6E4wzKq7pviAASj/hirRgSz64GBjHZMGbmXCOXvsV3pEF1dfibHBA9dnNHkSNcfpKqcvsOSJwSjq+CfEwyAUwPOgM1bn49ozpdGMMstYbn+u25NfMLdfPVb2Ney42WeG7uncVGDDccp4V8AmSIPi1sNs6P7kwAmZpH6+w83wvG10= jonas@pop-os"
  ];

  robertKeys = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAA3PSbVdQzIvsWTNWYhR298oaYDl9ySe/PBUZrlcjPB scha@in.tum.de"
  ];

  theoKeys = [
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCvGQ0aKNGTkaEjjkGkaQ+8vA83Tbl5fpjuGTPrmszZuxzmSx4/6kw7Py4faLRJfcFNPdPp9FfFxsqCLpYMWKYVmdojQHIGBTugTtaadCrQ4W0Su6WcTN3OLa6n9heo+SE4Z+Uk1dUys0jMaZoKH7x/x2Yd9Zwg9sd0O2oa65VFV831mVGnagSrk+pJBh1MprmDEgobsRVFDEC8bENe23S58Hpvp6c7kLJnNlb11ojVAJBPBmH1QLwKceW66iRQPAmHJdqx5xCIWO1qkOut/hzNuDQMghGabsfh9huWpInZBVSH29pEWWw4CiPgACVzFBTojqcmlRiTMiszX7MiPkIfLCilpQF/KtavhGihq4yRs+6UxKV/4ErYItZeDaI5kgU+19cug12newP8wks9hJNpXX3N0wXYM0M8ZPvXc61z7EfRfpBMh5XLj9RMnSfuGFfoGKkRcWgx9nx+69FwqNQYsbL+id8U0lHqas6ai6gEbecF8UJv/r2h0zDaoKhNv70= taugoust@fedora"
  ];

  simonkKeys = [
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDrdEe2/aOcUzaPtkDLJQ8VrcfiF8tNpk02SPLIVrsTywSHrBueOMz/cVR/Dkk7HREkI8iPshIefYogGgXNrwXp4ogu7DFA/5FS58QgrUS/il/LYT1pIcC4URFt0s5UHxvXbVP/zPVVpDZ7AqXLzz0H95csR9mO5eY2CgZh5+haC1dNhBEZK7v2pcsp+TrDzcxKjo5ZjqFAUNRBAT/lMJy2t0Zdm9cnkNFYymC2n57mgve2W9L8mRsMTYdQbwT7S7PgV3605e7bphnvGVl09iSkwkbQZ9oiqvZFdVn9id6tPxlf6wnnMo2YU9fuqRJoF6kKGN5Mvqvmm6bIUW5y9cFjpAniJg7lPY2Dc/em/q5jpdYirnkPnjnjpqdNBKnroRbsNL8bUWPyyZM4seSAIaw61OUQLhJHClUx9sAb3nyWRq6k2PAB1HcBeY9dVgv3b+0ZzNsR52IqEzs3VOZGAS174Kd8FFk7oyV15a1qfyhCzKxNJIbW8AHXh+S7EcVnyYyJguJ/hblUOwsc4Un/3UQkmhTTOkZOb3zZklHM62isA4yA6uAUkCxASgaG0UMtvzeJiynYLr1x4YR2jTKU2VD79n8pcKienJmBH0d80FtnPMiJPZA4EiVSXYAZ1PKbVsSBk47Ia7SmgZr46VX4ha5frAY/kQNzFk9qyImuyPyIyw== kammerme ge35tem"
  ];

  emilKeys = [
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDgvbY6SooSd15IeR4TO2xrbqL9NrUKdxRk0EmUy4nF1xy8gTVb6fzjbeFer7ECgWE3YgUQ2ejWXtveT8jLcJmMAgGrfspfzI2uA5ijYtVlqUqL0Acxra6DMvYDhQkOG66ri5uCah2u9HUGLt56gLsjEALsDK2cJjh8Km5fRk8vxdtESSx/pd5fK0J7x5J2b3SAPtLnF9j5s1JfMxAqxYgIgwaghF5+z1IEDGRKEOsXDFNOE2AhLChf1ALtqpF6p9FigLYDXRNO2LOWAZBDbeTNq0WQJlN3BPwPfgLJKBTgLdZ/RREiYf8DEmx+c7PTjushyAYnCM/YlzCfeLBwnFXNk2XsSZUH99pZy0scjOuDtHu0uY4NTfBo9H1mmznOOjgovXwgmgdujTzl4prciRl4feKbOR5lmQV4ziwAbvLOdVoP0ABri3pFumkgjNiv91kvAOgILGvMfeeiuVxiVjLbDxBRuL5hlqq/t6wGnGlP4xCqN9f87qz8kfc5ls80TK7Nh1yi4USQIsfaZkBM/sCARIj1CSu9emcI3Oo856jz+l2SlB9r0urqbuSNoUxh14uQ35uYqcqhjXc+AI0acBVmDH1lHurgvVAQdceYGdVPW9iV4sQNoFnFqoMgbblA+y9ujZu3a3XEGv8HzKL7wT17YXc0V2y30DeFSEiqxcEJmw== emil@sssemil"
  ];

  shuKeys = [
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDdNJJX/Y6xOkSKwrHubpZNti5Gk9VFycn9hLzP2x9fo/ZbqrSfNNSAmj2OMHjXKpXHkyVuD2V4Yw/N7ulIX070o05ljn3zbZO4z6upg1czjXys//LvGevCm6cItg5i4bk/XVz+1Q+iaQgPQbkQJ0cM9h1kIwq1p9S+mh37yj4JVmSb6w+hVD6kWOTrE9UL88HEPmBClr/syqQ9KJt9/KvnoeBV5GE58swYvCNCenUdSHYzhpE4WUKeJhqO38i1Oux6aXSJbjdQaR+YaHTXPHkHLOpkY6lHleRj2M9ooEwYzAjIoU9zGgjoj1fxOp9IGdlS/BhnFVaPh/z2Hu1KPpOmY+Cby9hIUf13KCUnp3eLGf5HB3IUBRTf6t12A65cPHeVISBOLO+6gcrOWKHnNAOq8RJaNBvNQ+N0AZejXYdojqvSod2+0ATT57bSlUiL3E+u5KN7gG7/dohY4OdxSMqt+Hvi3fsMYt2FKVUFWK4AqvgaXzDj4mjIZ44DAHdS408= gedatsu@fedora"
  ];

  turkmenKeys = [
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCsA5EhZL7JyoctqOzc2Sc/uNq2viAIwFQ6YUqlSdlKCqPonnNGxyGiW+/voNPvmo8ZsZwth9PPTvPwrXjxofpypDtzuiIAQCiOEGLWJmProYVydF2TjurtIFTPmMJELQ9qWVZrCbBaL0ekdDLpqHV8SrAdF/weaVyfBGl+RFO6rZfAwW9c3fLFLd7o9U0hUOSMWOjI1OStGXhoYXB4kdXHqV31WnHwSKitoAfEXGtjqqOqX1ulheuQ36by5VKnieX8scFZuqlxRCZYlTZRSC1jPpaYOL1zuu1uY9qNIEEwr0taXyWXp/dGZiYr7WO3109CYdBVdgG0WddKLH6QCug9grXuyJhiagC8OzCBQNg+n97pPmoP1GboUstEAkikKvzgU/udLRr4he046vnczgXNe4r4VUeCNaHJnDp17VFxveX0ANz1jde9NcMUD4X70eTUO9lGjFZHPYqMTcF06m1qvm6Jri3tsXXrkAFatPw448tD9awh7atPaEJYqKT59yoglCmyrmjxWDfdf4beCVyZ2WMPjlqgmTw3u8l7rt1flBd4z3cKEJHmyakmlPVLClnSWc70PdisfW7PeqAHNFJ5zkV92y9B9RKJrTtTyIdmxx4ESiUsFbfLUrBQgv6uLOtRIV4JzJ2bUT4lHDvkQHPWib04hzt51pSHl4mAN5BADw=="
  ];

  saracKeys = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIC4e7BZ5ip9KVu7oY0x7nuWIcZIK+FGLk4pZPrua0sfF"
  ];

in {
  # for new students please use a uid in the range between 2000-3000
  # You can set `users.users.<name>.allowedHosts` to restrict access to certain machines.
  users.users = {
    # Paul Heidekrüger, Babish's BA student (Dependency ordering in the linux kernel)
    paul = {
      isNormalUser = true;
      home = "/home/paul";
      inherit (config.users.users.joerg) extraGroups;
      shell = "/run/current-system/sw/bin/zsh";
      uid = 1007;
      openssh.authorizedKeys.keys = paulKeys;
    };

    # Jasper Ruhl (guided research) with Redha
    jasper = {
      isNormalUser = true;
      home = "/home/jasper";
      inherit (config.users.users.joerg) extraGroups;
      shell = "/run/current-system/sw/bin/fish";
      uid = 1015;
      openssh.authorizedKeys.keys = jrKeys;
    };

    # Martin Fink (guided research) with Redha/Rodrigo
    # maybe remove after winter semester 2021/2022
    martin = {
      isNormalUser = true;
      home = "/home/martin";
      inherit (config.users.users.joerg) extraGroups;
      shell = "/run/current-system/sw/bin/zsh";
      uid = 1016;
      openssh.authorizedKeys.keys = mfKeys;
    };

    # Julian Pritzi, Harshas's student (Benchmarking tool for ICU project)
    julian = {
      isNormalUser = true;
      home = "/home/julian";
      inherit (config.users.users.joerg) extraGroups;
      shell = "/run/current-system/sw/bin/bash";
      uid = 2000;
      openssh.authorizedKeys.keys = julianKeys;
    };

    # Matthias Werndle, Dimitris' BSc student (Generic programming model for PM)
    mwerndle = {
      isNormalUser = true;
      home = "/home/mwerndle";
      inherit (config.users.users.joerg) extraGroups;
      shell = "/run/current-system/sw/bin/bash";
      uid = 2001;
      openssh.authorizedKeys.keys = mwerndleKeys;
    };
    
    # Marcel Faltus, Redha's BSc student (Porting QEMU for Apple M1)
    mfaltus = {
      isNormalUser = true;
      home = "/home/mfaltus";
      inherit (config.users.users.joerg) extraGroups;
      shell = "/run/current-system/sw/bin/bash";
      uid = 2002;
      openssh.authorizedKeys.keys = mfaltusKeys;
    };

    # Sandro Gierens, Peter's BSc student (applying ioregionfd to KVM/qemu devices)
    gierens = {
      isNormalUser = true;
      home = "/home/gierens";
      inherit (config.users.users.joerg) extraGroups;
      shell = "/run/current-system/sw/bin/bash";
      uid = 2003;
      openssh.authorizedKeys.keys = gierensKeys;
    };

    # Vanda Hendrychova, Masa's MSc student (extensible unikernels)
    vanda = {
      isNormalUser = true;
      home = "/home/vanda";
      inherit (config.users.users.joerg) extraGroups;
      shell = "/run/current-system/sw/bin/bash";
      uid = 2004;
      openssh.authorizedKeys.keys = vandaKeys;
    };

    # Kilian Mio, Peters's BSc student (NIC mediation/passthrough)
    mikilio = {
      isNormalUser = true;
      home = "/home/mikilio";
      inherit (config.users.users.joerg) extraGroups;
      shell = "/run/current-system/sw/bin/bash";
      uid = 2005;
      openssh.authorizedKeys.keys = mikilioKeys;
    };

    # Yi He, Sys-lab WS22 (Sebastian's group)
    yihe = {
      isNormalUser = true;
      home = "/home/yihe";
      inherit (config.users.users.joerg) extraGroups;
      shell = "/run/current-system/sw/bin/bash";
      uid = 2006;
      allowedHosts = ["ryan" "adelaide"];
      openssh.authorizedKeys.keys = yiheKeys;
    };

    # Yiwen Liu, Sys-lab WS22 (Sebastian's group)
    yiwenliu = {
      isNormalUser = true;
      home = "/home/yiwenliu";
      inherit (config.users.users.joerg) extraGroups;
      shell = "/run/current-system/sw/bin/bash";
      uid = 2007;
      allowedHosts = ["ryan" "adelaide"];
      openssh.authorizedKeys.keys = yiwenliuKeys;
    };

    # Hanwen Liu, Sys-lab WS22 (Sebastian's group)
    hanwenliu = {
      isNormalUser = true;
      home = "/home/hanwenliu";
      inherit (config.users.users.joerg) extraGroups;
      shell = "/run/current-system/sw/bin/bash";
      uid = 2008;
      allowedHosts = ["ryan" "adelaide"];
      openssh.authorizedKeys.keys = hanwenliuKeys;
    };

    # Wonbang Seo, Sys-lab WS22 (Sebastian's group)
    wonbangseo = {
      isNormalUser = true;
      home = "/home/wonbangseo";
      inherit (config.users.users.joerg) extraGroups;
      shell = "/run/current-system/sw/bin/bash";
      uid = 2009;
      allowedHosts = ["ryan" "adelaide"];
      openssh.authorizedKeys.keys = wonbangseoKeys;
    };

    # Justus von der Beek, Sys-lab WS22 (Atsushi's group)
    justusvonderbeek = {
      isNormalUser = true;
      home = "/home/justus";
      inherit (config.users.users.joerg) extraGroups;
      shell = "/run/current-system/sw/bin/bash";
      uid = 2010;
      allowedHosts = ["ryan"];
      openssh.authorizedKeys.keys = justusvonderbeekKeys;
    };

    # Rohan Fernandez, Sys-lab WS22 (Atsushi's group)
    rohanfernandez = {
      isNormalUser = true;
      home = "/home/rohan";
      inherit (config.users.users.joerg) extraGroups;
      shell = "/run/current-system/sw/bin/bash";
      uid = 2011;
      allowedHosts = ["ryan"];
      openssh.authorizedKeys.keys = rohanfernandezKeys;
    };

    # Alexander Maslew, Sys-lab WS22 (Atsushi's group)
    alexandermaslew = {
      isNormalUser = true;
      home = "/home/alexander";
      inherit (config.users.users.joerg) extraGroups;
      shell = "/run/current-system/sw/bin/bash";
      uid = 2012;
      allowedHosts = ["ryan"];
      openssh.authorizedKeys.keys = alexandermaslewKeys;
    };

    # Zixuan Li, Sys-lab WS22 (Atsushi's group)
    zixuanli = {
      isNormalUser = true;
      home = "/home/zixuan";
      inherit (config.users.users.joerg) extraGroups;
      shell = "/run/current-system/sw/bin/bash";
      uid = 2013;
      allowedHosts = ["ryan"];
      openssh.authorizedKeys.keys = zixuanliKeys;
    };

    # Jonas Zöschg, Harsha's student (End-to-end on-chip encryption)
    jonas = {
      isNormalUser = true;
      home = "/home/jonas";
      inherit (config.users.users.joerg) extraGroups;
      shell = "/run/current-system/sw/bin/bash";
      uid = 2014;
      openssh.authorizedKeys.keys = jonasKeys;
    };


    # Robert Schambach, Dimitra MSc student (Opentitan -- t-nic project)
    robert = {
      isNormalUser = true;
      home = "/home/robert";
      inherit (config.users.users.joerg) extraGroups;
      shell = "/run/current-system/sw/bin/zsh";
      uid = 2015;
      openssh.authorizedKeys.keys = robertKeys;
    };

    # Theofilos Augoustis, Redha's MSc student (Arancini project)
    theo = {
      isNormalUser = true;
      home = "/home/theo";
      inherit (config.users.users.joerg) extraGroups;
      shell = "/run/current-system/sw/bin/zsh";
      uid = 2016;
      openssh.authorizedKeys.keys = theoKeys;
    };

    # Simon Kammermeier, Redha's BSc student (Arancini project)
    simonk = {
      isNormalUser = true;
      home = "/home/simonk";
      inherit (config.users.users.joerg) extraGroups;
      shell = "/run/current-system/sw/bin/zsh";
      uid = 2017;
      openssh.authorizedKeys.keys = simonkKeys;
    };

    # Emil Suleymanov, secure-reliable seminar student WS22
    emil = {
      isNormalUser = true;
      home = "/home/emil";
      inherit (config.users.users.joerg) extraGroups;
      shell = "/run/current-system/sw/bin/zsh";
      uid = 2018;
      allowedHosts = ["jack"];
      openssh.authorizedKeys.keys = emilKeys;
    };

    # Shi Anzai, former intern (Atsushi)
    shu = {
      isNormalUser = true;
      home = "/home/shu";
      inherit (config.users.users.joerg) extraGroups;
      shell = "/run/current-system/sw/bin/bash";
      uid = 2019;
      openssh.authorizedKeys.keys = shuKeys;
    };

    # Ahmet Turkmen, secure-reliable seminar student WS22
    turkmen = {
      isNormalUser = true;
      home = "/home/turkmen";
      inherit (config.users.users.joerg) extraGroups;
      shell = "/run/current-system/sw/bin/zsh";
      uid = 2020;
      allowedHosts = ["jack" "graham"];
      openssh.authorizedKeys.keys = turkmenKeys;
    };

    # Mert Saraç, secure-reliable seminar student WS22
    sarac = {
      isNormalUser = true;
      home = "/home/sarac";
      inherit (config.users.users.joerg) extraGroups;
      shell = "/run/current-system/sw/bin/zsh";
      uid = 2021;
      allowedHosts = ["jack" "graham"];
      openssh.authorizedKeys.keys = saracKeys;
    };
  };

  # DANGER ZONE!
  # Make sure all data is backed up before adding user names here. This will
  # delete all data of the associated user
  users.deletedUsers = [
    "alexa"
    "vincent"
    "ml"
    "philip"
    "m00wl"
    "he"
  ];

  # only used by jasper atm
  programs.fish.enable = true;
}
