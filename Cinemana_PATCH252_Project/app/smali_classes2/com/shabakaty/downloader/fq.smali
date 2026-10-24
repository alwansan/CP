.class public final Lcom/shabakaty/downloader/fq;
.super Ljava/lang/Object;
.source "CacheStrategy.kt"


# instance fields
.field public final a:Lcom/shabakaty/downloader/vr3;

.field public final b:Lcom/shabakaty/downloader/ws3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vr3;Lcom/shabakaty/downloader/ws3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/fq;->a:Lcom/shabakaty/downloader/vr3;

    iput-object p2, p0, Lcom/shabakaty/downloader/fq;->b:Lcom/shabakaty/downloader/ws3;

    return-void
.end method

.method public static final a(Lcom/shabakaty/downloader/ws3;Lcom/shabakaty/downloader/vr3;)Z
    .locals 4

    const-string v0, "response"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/ws3;->v:I

    const/16 v1, 0xc8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x19a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x19e

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1f5

    if-eq v0, v1, :cond_1

    const/16 v1, 0xcb

    if-eq v0, v1, :cond_1

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_1

    const/16 v1, 0x133

    if-eq v0, v1, :cond_0

    const/16 v1, 0x134

    if-eq v0, v1, :cond_1

    const/16 v1, 0x194

    if-eq v0, v1, :cond_1

    const/16 v1, 0x195

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    return v2

    :cond_0
    :pswitch_0
    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v3, "Expires"

    .line 2
    invoke-static {p0, v3, v0, v1}, Lcom/shabakaty/downloader/ws3;->b(Lcom/shabakaty/downloader/ws3;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/ws3;->a()Lcom/shabakaty/downloader/qp;

    move-result-object v0

    .line 3
    iget v0, v0, Lcom/shabakaty/downloader/qp;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ws3;->a()Lcom/shabakaty/downloader/qp;

    move-result-object v0

    .line 5
    iget-boolean v0, v0, Lcom/shabakaty/downloader/qp;->f:Z

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ws3;->a()Lcom/shabakaty/downloader/qp;

    move-result-object v0

    .line 7
    iget-boolean v0, v0, Lcom/shabakaty/downloader/qp;->e:Z

    if-nez v0, :cond_1

    return v2

    .line 8
    :cond_1
    :pswitch_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ws3;->a()Lcom/shabakaty/downloader/qp;

    move-result-object p0

    .line 9
    iget-boolean p0, p0, Lcom/shabakaty/downloader/qp;->b:Z

    if-nez p0, :cond_2

    .line 10
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vr3;->a()Lcom/shabakaty/downloader/qp;

    move-result-object p0

    .line 11
    iget-boolean p0, p0, Lcom/shabakaty/downloader/qp;->b:Z

    if-nez p0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
