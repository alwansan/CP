.class public final synthetic Lcom/shabakaty/downloader/bh0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ch0;

.field public final synthetic s:I


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/ch0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/bh0;->r:Lcom/shabakaty/downloader/ch0;

    iput p2, p0, Lcom/shabakaty/downloader/bh0;->s:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/shabakaty/downloader/bh0;->r:Lcom/shabakaty/downloader/ch0;

    iget v0, p0, Lcom/shabakaty/downloader/bh0;->s:I

    const-string v1, "this$0"

    .line 1
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/ch0;->c(I)V

    return-void
.end method
