%#template to generate a HTML table from a list of tuples (or list of lists, or tuple of tuples or ...)
%# get the w3.css style sheet
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<p>The open items are as follows:</p>
<div class="w3-blue">
<table border="1">
%for row in rows:
  <tr>
  %for col in row:
    <td>{{str(col).upper()}}</td>
  %end
  </tr>
%end
</table>
</div>