.class public final synthetic Lcom/shabakaty/downloader/x5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/si2$a;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/t6$a;

.field public final synthetic s:I

.field public final synthetic t:I


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/t6$a;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/x5;->r:Lcom/shabakaty/downloader/t6$a;

    iput p2, p0, Lcom/shabakaty/downloader/x5;->s:I

    iput p3, p0, Lcom/shabakaty/downloader/x5;->t:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/downloader/x5;->r:Lcom/shabakaty/downloader/t6$a;

    iget v1, p0, Lcom/shabakaty/downloader/x5;->s:I

    iget v2, p0, Lcom/shabakaty/downloader/x5;->t:I

    check-cast p1, Lcom/shabakaty/downloader/t6;

    .line 1
    invoke-interface {p1, v0, v1, v2}, Lcom/shabakaty/downloader/t6;->C(Lcom/shabakaty/downloader/t6$a;II)V

    return-void
.end method
