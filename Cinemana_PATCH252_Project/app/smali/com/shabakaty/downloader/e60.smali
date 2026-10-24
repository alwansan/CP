.class public Lcom/shabakaty/downloader/e60;
.super Ljava/lang/Object;
.source "ColorPickerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Lcom/skydoves/colorpickerview/ColorPickerView;


# direct methods
.method public constructor <init>(Lcom/skydoves/colorpickerview/ColorPickerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/e60;->r:Lcom/skydoves/colorpickerview/ColorPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/e60;->r:Lcom/skydoves/colorpickerview/ColorPickerView;

    invoke-virtual {v0}, Lcom/skydoves/colorpickerview/ColorPickerView;->getColor()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/skydoves/colorpickerview/ColorPickerView;->a(IZ)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/e60;->r:Lcom/skydoves/colorpickerview/ColorPickerView;

    .line 3
    iget-object v1, v0, Lcom/skydoves/colorpickerview/ColorPickerView;->t:Landroid/graphics/Point;

    .line 4
    invoke-virtual {v0, v1}, Lcom/skydoves/colorpickerview/ColorPickerView;->d(Landroid/graphics/Point;)V

    return-void
.end method
