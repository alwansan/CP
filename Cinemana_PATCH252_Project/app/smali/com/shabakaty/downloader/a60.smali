.class public Lcom/shabakaty/downloader/a60;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/f60;

.field public final synthetic s:Lcom/shabakaty/downloader/b60;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/b60;Lcom/shabakaty/downloader/f60;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/a60;->s:Lcom/shabakaty/downloader/b60;

    iput-object p2, p0, Lcom/shabakaty/downloader/a60;->r:Lcom/shabakaty/downloader/f60;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/a60;->r:Lcom/shabakaty/downloader/f60;

    instance-of p2, p1, Lcom/shabakaty/downloader/w50;

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 2
    check-cast p1, Lcom/shabakaty/downloader/w50;

    iget-object p2, p0, Lcom/shabakaty/downloader/a60;->s:Lcom/shabakaty/downloader/b60;

    .line 3
    iget-object p2, p2, Lcom/shabakaty/downloader/b60;->d:Lcom/skydoves/colorpickerview/ColorPickerView;

    .line 4
    invoke-virtual {p2}, Lcom/skydoves/colorpickerview/ColorPickerView;->getColor()I

    move-result p2

    invoke-interface {p1, p2, v0}, Lcom/shabakaty/downloader/w50;->a(IZ)V

    goto :goto_0

    .line 5
    :cond_0
    instance-of p2, p1, Lcom/shabakaty/downloader/t50;

    if-eqz p2, :cond_1

    .line 6
    check-cast p1, Lcom/shabakaty/downloader/t50;

    iget-object p2, p0, Lcom/shabakaty/downloader/a60;->s:Lcom/shabakaty/downloader/b60;

    .line 7
    iget-object p2, p2, Lcom/shabakaty/downloader/b60;->d:Lcom/skydoves/colorpickerview/ColorPickerView;

    .line 8
    invoke-virtual {p2}, Lcom/skydoves/colorpickerview/ColorPickerView;->getColorEnvelope()Lcom/shabakaty/downloader/s50;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Lcom/shabakaty/downloader/t50;->b(Lcom/shabakaty/downloader/s50;Z)V

    .line 9
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/a60;->s:Lcom/shabakaty/downloader/b60;

    .line 10
    iget-object p2, p1, Lcom/shabakaty/downloader/b60;->d:Lcom/skydoves/colorpickerview/ColorPickerView;

    if-eqz p2, :cond_2

    .line 11
    invoke-virtual {p1}, Landroidx/appcompat/app/b$a;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/c60;->b(Landroid/content/Context;)Lcom/shabakaty/downloader/c60;

    move-result-object p1

    iget-object p2, p0, Lcom/shabakaty/downloader/a60;->s:Lcom/shabakaty/downloader/b60;

    .line 12
    iget-object p2, p2, Lcom/shabakaty/downloader/b60;->d:Lcom/skydoves/colorpickerview/ColorPickerView;

    .line 13
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/c60;->d(Lcom/skydoves/colorpickerview/ColorPickerView;)V

    :cond_2
    return-void
.end method
