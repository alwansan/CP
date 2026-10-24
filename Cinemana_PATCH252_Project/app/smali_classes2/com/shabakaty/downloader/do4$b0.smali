.class public final enum Lcom/shabakaty/downloader/do4$b0;
.super Lcom/shabakaty/downloader/do4;
.source "TokeniserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/do4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/shabakaty/downloader/do4;-><init>(Ljava/lang/String;ILcom/shabakaty/downloader/do4$k;)V

    return-void
.end method


# virtual methods
.method public D(Lcom/shabakaty/downloader/co4;Lcom/shabakaty/downloader/ez;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/do4;->r:Lcom/shabakaty/downloader/do4;

    sget-object v1, Lcom/shabakaty/downloader/do4;->I0:[C

    invoke-virtual {p2, v1}, Lcom/shabakaty/downloader/ez;->h([C)Ljava/lang/String;

    move-result-object v1

    .line 2
    iget-object v2, p1, Lcom/shabakaty/downloader/co4;->i:Lcom/shabakaty/downloader/zn4$i;

    .line 3
    iget-object v3, v2, Lcom/shabakaty/downloader/zn4$i;->d:Ljava/lang/String;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, v2, Lcom/shabakaty/downloader/zn4$i;->d:Ljava/lang/String;

    .line 4
    invoke-virtual {p2}, Lcom/shabakaty/downloader/ez;->d()C

    move-result p2

    if-eqz p2, :cond_5

    const/16 v1, 0x20

    if-eq p2, v1, :cond_4

    const/16 v1, 0x22

    if-eq p2, v1, :cond_3

    const/16 v1, 0x27

    if-eq p2, v1, :cond_3

    const/16 v1, 0x2f

    if-eq p2, v1, :cond_2

    const v1, 0xffff

    if-eq p2, v1, :cond_1

    const/16 v1, 0x9

    if-eq p2, v1, :cond_4

    const/16 v1, 0xa

    if-eq p2, v1, :cond_4

    const/16 v1, 0xc

    if-eq p2, v1, :cond_4

    const/16 v1, 0xd

    if-eq p2, v1, :cond_4

    packed-switch p2, :pswitch_data_0

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/co4;->i:Lcom/shabakaty/downloader/zn4$i;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/zn4$i;->i(C)V

    goto :goto_1

    .line 6
    :pswitch_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/co4;->g()V

    .line 7
    iput-object v0, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    goto :goto_1

    .line 8
    :pswitch_1
    sget-object p2, Lcom/shabakaty/downloader/do4;->b0:Lcom/shabakaty/downloader/do4;

    .line 9
    iput-object p2, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/co4;->h(Lcom/shabakaty/downloader/do4;)V

    .line 11
    iput-object v0, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    goto :goto_1

    .line 12
    :cond_2
    sget-object p2, Lcom/shabakaty/downloader/do4;->g0:Lcom/shabakaty/downloader/do4;

    .line 13
    iput-object p2, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    goto :goto_1

    .line 14
    :cond_3
    :pswitch_2
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/co4;->i(Lcom/shabakaty/downloader/do4;)V

    .line 15
    iget-object p1, p1, Lcom/shabakaty/downloader/co4;->i:Lcom/shabakaty/downloader/zn4$i;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/zn4$i;->i(C)V

    goto :goto_1

    .line 16
    :cond_4
    sget-object p2, Lcom/shabakaty/downloader/do4;->a0:Lcom/shabakaty/downloader/do4;

    .line 17
    iput-object p2, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    goto :goto_1

    .line 18
    :cond_5
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/co4;->i(Lcom/shabakaty/downloader/do4;)V

    .line 19
    iget-object p1, p1, Lcom/shabakaty/downloader/co4;->i:Lcom/shabakaty/downloader/zn4$i;

    const p2, 0xfffd

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/zn4$i;->i(C)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
