.class Lcom/shabakaty/cinemana/ca1/ThemeStudio142$5;
.super Ljava/lang/Object;
.source "ThemeStudio142.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shabakaty/cinemana/ca1/ThemeStudio142;


# direct methods
.method constructor <init>(Lcom/shabakaty/cinemana/ca1/ThemeStudio142;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 122
    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/ThemeStudio142$5;->this$0:Lcom/shabakaty/cinemana/ca1/ThemeStudio142;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 122
    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/ThemeStudio142$5;->this$0:Lcom/shabakaty/cinemana/ca1/ThemeStudio142;

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->resetAll(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/ThemeStudio142$5;->this$0:Lcom/shabakaty/cinemana/ca1/ThemeStudio142;

    const-string v0, "\u062a\u0645\u062a \u0625\u0639\u0627\u062f\u0629 Cinemana Classic"

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/ThemeStudio142$5;->this$0:Lcom/shabakaty/cinemana/ca1/ThemeStudio142;

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->restartApp(Landroid/app/Activity;)V

    return-void
.end method
