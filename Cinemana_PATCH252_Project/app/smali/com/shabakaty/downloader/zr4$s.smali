.class public Lcom/shabakaty/downloader/zr4$s;
.super Lcom/shabakaty/downloader/wr4;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/zr4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/wr4<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/wr4;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/ga2;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ga2;->L()Lcom/shabakaty/downloader/ka2;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/ka2;->z:Lcom/shabakaty/downloader/ka2;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ga2;->B()V

    const/4 p1, 0x0

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ga2;->b()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ga2;->L()Lcom/shabakaty/downloader/ka2;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/ka2;->u:Lcom/shabakaty/downloader/ka2;

    if-eq v0, v1, :cond_7

    .line 5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ga2;->w()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ga2;->t()I

    move-result v1

    const-string v8, "year"

    .line 7
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    const-string v8, "month"

    .line 8
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v3, v1

    goto :goto_0

    :cond_3
    const-string v8, "dayOfMonth"

    .line 9
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v4, v1

    goto :goto_0

    :cond_4
    const-string v8, "hourOfDay"

    .line 10
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v5, v1

    goto :goto_0

    :cond_5
    const-string v8, "minute"

    .line 11
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v6, v1

    goto :goto_0

    :cond_6
    const-string v8, "second"

    .line 12
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v7, v1

    goto :goto_0

    .line 13
    :cond_7
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ga2;->f()V

    .line 14
    new-instance p1, Ljava/util/GregorianCalendar;

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    :goto_1
    return-object p1
.end method

.method public b(Lcom/shabakaty/downloader/pa2;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Ljava/util/Calendar;

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/pa2;->k()Lcom/shabakaty/downloader/pa2;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/pa2;->c()Lcom/shabakaty/downloader/pa2;

    const-string v0, "year"

    .line 4
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/pa2;->g(Ljava/lang/String;)Lcom/shabakaty/downloader/pa2;

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/shabakaty/downloader/pa2;->v(J)Lcom/shabakaty/downloader/pa2;

    const-string v0, "month"

    .line 6
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/pa2;->g(Ljava/lang/String;)Lcom/shabakaty/downloader/pa2;

    const/4 v0, 0x2

    .line 7
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/shabakaty/downloader/pa2;->v(J)Lcom/shabakaty/downloader/pa2;

    const-string v0, "dayOfMonth"

    .line 8
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/pa2;->g(Ljava/lang/String;)Lcom/shabakaty/downloader/pa2;

    const/4 v0, 0x5

    .line 9
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/shabakaty/downloader/pa2;->v(J)Lcom/shabakaty/downloader/pa2;

    const-string v0, "hourOfDay"

    .line 10
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/pa2;->g(Ljava/lang/String;)Lcom/shabakaty/downloader/pa2;

    const/16 v0, 0xb

    .line 11
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/shabakaty/downloader/pa2;->v(J)Lcom/shabakaty/downloader/pa2;

    const-string v0, "minute"

    .line 12
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/pa2;->g(Ljava/lang/String;)Lcom/shabakaty/downloader/pa2;

    const/16 v0, 0xc

    .line 13
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/shabakaty/downloader/pa2;->v(J)Lcom/shabakaty/downloader/pa2;

    const-string v0, "second"

    .line 14
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/pa2;->g(Ljava/lang/String;)Lcom/shabakaty/downloader/pa2;

    const/16 v0, 0xd

    .line 15
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/shabakaty/downloader/pa2;->v(J)Lcom/shabakaty/downloader/pa2;

    .line 16
    invoke-virtual {p1}, Lcom/shabakaty/downloader/pa2;->f()Lcom/shabakaty/downloader/pa2;

    :goto_0
    return-void
.end method
