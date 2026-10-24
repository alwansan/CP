.class Lcom/shabakaty/cinemana/ca1/Settings94$1;
.super Ljava/lang/Object;
.source "Settings94.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/ca1/Settings94;->dialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$choices:[I

.field final synthetic val$label:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/Settings94$1;->val$label:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/shabakaty/cinemana/ca1/Settings94$1;->val$choices:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 5
    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Settings94$1;->val$label:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u062d\u0633\u0627\u0633\u064a\u0629 \u0627\u0644\u0633\u062d\u0628: "

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Settings94$1;->val$choices:[I

    aget p2, v0, p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " \u062b\u0627\u0646\u064a\u0629 \u0644\u0639\u0631\u0636 \u0627\u0644\u0634\u0627\u0634\u0629"

    invoke-static {p3}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 5
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 5
    return-void
.end method
