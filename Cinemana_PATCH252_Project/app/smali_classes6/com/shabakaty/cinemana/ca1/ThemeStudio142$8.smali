.class Lcom/shabakaty/cinemana/ca1/ThemeStudio142$8;
.super Ljava/lang/Object;
.source "ThemeStudio142.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->presetRow(Ljava/lang/String;Ljava/lang/String;I)Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shabakaty/cinemana/ca1/ThemeStudio142;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/shabakaty/cinemana/ca1/ThemeStudio142;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 143
    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/ThemeStudio142$8;->this$0:Lcom/shabakaty/cinemana/ca1/ThemeStudio142;

    iput p2, p0, Lcom/shabakaty/cinemana/ca1/ThemeStudio142$8;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 143
    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/ThemeStudio142$8;->this$0:Lcom/shabakaty/cinemana/ca1/ThemeStudio142;

    iget v0, p0, Lcom/shabakaty/cinemana/ca1/ThemeStudio142$8;->val$mode:I

    invoke-static {p1, v0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->setMode(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/ThemeStudio142$8;->this$0:Lcom/shabakaty/cinemana/ca1/ThemeStudio142;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u062a\u0645 \u0627\u062e\u062a\u064a\u0627\u0631 "

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/ThemeStudio142$8;->this$0:Lcom/shabakaty/cinemana/ca1/ThemeStudio142;

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->modeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/ThemeStudio142$8;->this$0:Lcom/shabakaty/cinemana/ca1/ThemeStudio142;

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->restartApp(Landroid/app/Activity;)V

    return-void
.end method
