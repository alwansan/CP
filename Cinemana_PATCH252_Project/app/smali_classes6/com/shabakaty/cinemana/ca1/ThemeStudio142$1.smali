.class Lcom/shabakaty/cinemana/ca1/ThemeStudio142$1;
.super Ljava/lang/Object;
.source "ThemeStudio142.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

    .line 118
    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/ThemeStudio142$1;->this$0:Lcom/shabakaty/cinemana/ca1/ThemeStudio142;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 118
    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/ThemeStudio142$1;->this$0:Lcom/shabakaty/cinemana/ca1/ThemeStudio142;

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->access$000(Lcom/shabakaty/cinemana/ca1/ThemeStudio142;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u0634\u0641\u0627\u0641\u064a\u0629 \u0627\u0644\u0633\u0637\u062d: "

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    add-int/lit8 p2, p2, 0x14

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "%"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/ThemeStudio142$1;->this$0:Lcom/shabakaty/cinemana/ca1/ThemeStudio142;

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->access$100(Lcom/shabakaty/cinemana/ca1/ThemeStudio142;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 118
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 118
    return-void
.end method
