---

layout: default
title: Sammlung
nav_order: 10
has_children: true
permalink: sammlung

---

# Liedsammlung
hier können beliebige Lieder gesammelt und archiviert werden. Dazu einfach ein Lied `liedname.md` in das Sammlungsverzeichnis anlegen und mit folgedem Header versehen:

```yml
---
layout: default
title: Liedtitel
parent: "Sammlung"
---

# Überschrift 1
## Überschrift 2

[externer Link](https://link.com)
```

[see here]({{ site.baseurl }}{% link Sammlung/sammlung.md %})
