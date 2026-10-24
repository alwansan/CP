.class public final synthetic Lcom/shabakaty/downloader/e3;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/google/android/material/button/MaterialButton;ILcom/google/android/material/button/MaterialButton;)V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method
