# PATCH289 direct Android API entry points for frequently rebound continue cards
import pathlib
p=pathlib.Path("Cinemana_PATCH252_Project/app/smali_classes6/com/shabakaty/cinemana/ca1/Continue106.smali").read_text()
card=p.split(".method public static card(Ljava/lang/Object;)V",1)[1].split(".end method",1)[0]
paint=p.split(".method static paint(Ljava/lang/Object;)V",1)[1].split(".end method",1)[0]
assert "View;->post(Ljava/lang/Runnable;)Z" in card
assert "Continue106;->call(" not in card
assert paint.count("View;->getParent()Landroid/view/ViewParent;")==2
assert "HorizontalScrollVideosView;->getTitle()Ljava/lang/String;" in paint
assert paint.count("getDeclaredMethods") == 0
assert "Continue106;->call(" not in paint.split(".line 162",1)[0]
print("PASS PATCH289 direct card post, parent traversal and home section title checks")
