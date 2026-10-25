.class public final Lcom/shabakaty/cinemana/ca1/Settings94$DecoderModeClick;
.super Ljava/lang/Object;
.source "Settings94.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;

.field private final context:Landroid/content/Context;

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/Settings94$DecoderModeClick;->context:Landroid/content/Context;
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Settings94$DecoderModeClick;->context:Landroid/content/Context;
    invoke-static {v0, p2}, Lcom/shabakaty/cinemana/player/CinemanaDecoderMode;->setMode(Landroid/content/Context;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const-string v1, "سيُطبق اختيار الديكودر عند تشغيل الفيديو التالي"
    const/4 v2, 0x0
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v1
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void
.end method
