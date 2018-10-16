<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FaceBoxControl.ascx.cs" Inherits="JSMSTC.InviteTender.Controls.FaceBoxControl" %>
<link href="../facebox/facebox.css" rel="stylesheet" type="text/css" />
<script src="../facebox/jquery.js" type="text/javascript"></script>
<script src="../facebox/facebox.js" type="text/javascript"></script>

<script type="text/javascript">
        jQuery(document).ready(function($) {
            $('a[rel*=facebox]').facebox()
        }) 
</script>