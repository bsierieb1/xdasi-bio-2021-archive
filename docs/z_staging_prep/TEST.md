---
title: TEST
parent: Week 2
grand_parent: Syllabus
nav_order: 3
has_children: false
---

<script language="javascript">
    function toggle(id) {
        var ele = document.getElementById("toggleText" + id);
        var text = document.getElementById("displayText" + id);
        if(ele.style.display == "block") {
            ele.style.display = "none";
            text.innerHTML = "Show Solution";
        } else {
            ele.style.display = "block";
            text.innerHTML = "Hide Solution";
        }
    }
</script>

<button id="displayTextunnamed-chunk-3" onclick="javascript:toggle('unnamed-chunk-3');">
Show Solution
</button>

<div id="toggleTextunnamed-chunk-3" style="display: none">
<div class="panel panel-default">
<div class="panel-heading panel-heading1">
Solution
</div>
<div class="panel-body">
The answer is, of course, 42.
</div>
</div>
</div>
