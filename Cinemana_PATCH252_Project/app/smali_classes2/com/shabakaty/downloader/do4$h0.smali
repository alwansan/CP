.class public final enum Lcom/shabakaty/downloader/do4$h0;
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
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/do4;->r:Lcom/shabakaty/downloader/do4;

    sget-object v1, Lcom/shabakaty/downloader/do4;->J0:[C

    invoke-virtual {p2, v1}, Lcom/shabakaty/downloader/ez;->h([C)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 3
    iget-object v2, p1, Lcom/shabakaty/downloader/co4;->i:Lcom/shabakaty/downloader/zn4$i;

    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/zn4$i;->k(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/shabakaty/downloader/ez;->d()C

    move-result p2

    if-eqz p2, :cond_6

    const/16 v1, 0x20

    if-eq p2, v1, :cond_5

    const/16 v1, 0x22

    if-eq p2, v1, :cond_4

    const/16 v1, 0x60

    if-eq p2, v1, :cond_4

    const v1, 0xffff

    if-eq p2, v1, :cond_3

    const/16 v1, 0x9

    if-eq p2, v1, :cond_5

    const/16 v1, 0xa

    if-eq p2, v1, :cond_5

    const/16 v1, 0xc

    if-eq p2, v1, :cond_5

    const/16 v1, 0xd

    if-eq p2, v1, :cond_5

    const/16 v1, 0x26

    if-eq p2, v1, :cond_1

    const/16 v1, 0x27

    if-eq p2, v1, :cond_4

    packed-switch p2, :pswitch_data_0

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/co4;->i:Lcom/shabakaty/downloader/zn4$i;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/zn4$i;->j(C)V

    goto :goto_0

    .line 6
    :pswitch_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/co4;->g()V

    .line 7
    iput-object v0, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    goto :goto_0

    :cond_1
    const/16 p2, 0x3e

    .line 8
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/shabakaty/downloader/co4;->b(Ljava/lang/Character;Z)[I

    move-result-object p2

    if-eqz p2, :cond_2

    .line 9
    iget-object p1, p1, Lcom/shabakaty/downloader/co4;->i:Lcom/shabakaty/downloader/zn4$i;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/zn4$i;->l([I)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p1, Lcom/shabakaty/downloader/co4;->i:Lcom/shabakaty/downloader/zn4$i;

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/zn4$i;->j(C)V

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/co4;->h(Lcom/shabakaty/downloader/do4;)V

    .line 12
    iput-object v0, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    goto :goto_0

    .line 13
    :cond_4
    :pswitch_1
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/co4;->i(Lcom/shabakaty/downloader/do4;)V

    .line 14
    iget-object p1, p1, Lcom/shabakaty/downloader/co4;->i:Lcom/shabakaty/downloader/zn4$i;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/zn4$i;->j(C)V

    goto :goto_0

    .line 15
    :cond_5
    sget-object p2, Lcom/shabakaty/downloader/do4;->Y:Lcom/shabakaty/downloader/do4;

    .line 16
    iput-object p2, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    goto :goto_0

    .line 17
    :cond_6
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/co4;->i(Lcom/shabakaty/downloader/do4;)V

    .line 18
    iget-object p1, p1, Lcom/shabakaty/downloader/co4;->i:Lcom/shabakaty/downloader/zn4$i;

    const p2, 0xfffd

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/zn4$i;->j(C)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
