.class public final enum Lcom/shabakaty/downloader/do4$a0;
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

    sget-object v1, Lcom/shabakaty/downloader/do4;->Z:Lcom/shabakaty/downloader/do4;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/ez;->d()C

    move-result v2

    if-eqz v2, :cond_3

    const/16 v3, 0x20

    if-eq v2, v3, :cond_4

    const/16 v3, 0x22

    if-eq v2, v3, :cond_2

    const/16 v3, 0x27

    if-eq v2, v3, :cond_2

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_1

    const v3, 0xffff

    if-eq v2, v3, :cond_0

    const/16 v3, 0x9

    if-eq v2, v3, :cond_4

    const/16 v3, 0xa

    if-eq v2, v3, :cond_4

    const/16 v3, 0xc

    if-eq v2, v3, :cond_4

    const/16 v3, 0xd

    if-eq v2, v3, :cond_4

    packed-switch v2, :pswitch_data_0

    .line 2
    iget-object v0, p1, Lcom/shabakaty/downloader/co4;->i:Lcom/shabakaty/downloader/zn4$i;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/zn4$i;->r()V

    .line 3
    invoke-virtual {p2}, Lcom/shabakaty/downloader/ez;->t()V

    .line 4
    iput-object v1, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    goto :goto_0

    .line 5
    :pswitch_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/co4;->g()V

    .line 6
    iput-object v0, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/co4;->h(Lcom/shabakaty/downloader/do4;)V

    .line 8
    iput-object v0, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    goto :goto_0

    .line 9
    :cond_1
    sget-object p2, Lcom/shabakaty/downloader/do4;->g0:Lcom/shabakaty/downloader/do4;

    .line 10
    iput-object p2, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    goto :goto_0

    .line 11
    :cond_2
    :pswitch_1
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/co4;->i(Lcom/shabakaty/downloader/do4;)V

    .line 12
    iget-object p2, p1, Lcom/shabakaty/downloader/co4;->i:Lcom/shabakaty/downloader/zn4$i;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/zn4$i;->r()V

    .line 13
    iget-object p2, p1, Lcom/shabakaty/downloader/co4;->i:Lcom/shabakaty/downloader/zn4$i;

    invoke-virtual {p2, v2}, Lcom/shabakaty/downloader/zn4$i;->i(C)V

    .line 14
    iput-object v1, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    goto :goto_0

    .line 15
    :cond_3
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/co4;->i(Lcom/shabakaty/downloader/do4;)V

    .line 16
    iget-object v0, p1, Lcom/shabakaty/downloader/co4;->i:Lcom/shabakaty/downloader/zn4$i;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/zn4$i;->r()V

    .line 17
    invoke-virtual {p2}, Lcom/shabakaty/downloader/ez;->t()V

    .line 18
    iput-object v1, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    :cond_4
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
