.class public final Lcom/shabakaty/downloader/ij3;
.super Ljava/lang/Object;
.source "ProtoEnumFlagsUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ij3$a;
    }
.end annotation


# direct methods
.method public static final a(Lcom/shabakaty/downloader/hj3;Lcom/shabakaty/downloader/fj3;)Lcom/shabakaty/downloader/mr0;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 1
    :cond_0
    sget-object p0, Lcom/shabakaty/downloader/ij3$a;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    :goto_0
    const-string p1, "PRIVATE"

    packed-switch p0, :pswitch_data_0

    .line 2
    sget-object p0, Lcom/shabakaty/downloader/lr0;->a:Lcom/shabakaty/downloader/mr0;

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 3
    :pswitch_0
    sget-object p0, Lcom/shabakaty/downloader/lr0;->f:Lcom/shabakaty/downloader/mr0;

    const-string p1, "LOCAL"

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 4
    :pswitch_1
    sget-object p0, Lcom/shabakaty/downloader/lr0;->e:Lcom/shabakaty/downloader/mr0;

    const-string p1, "PUBLIC"

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 5
    :pswitch_2
    sget-object p0, Lcom/shabakaty/downloader/lr0;->c:Lcom/shabakaty/downloader/mr0;

    const-string p1, "PROTECTED"

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :pswitch_3
    sget-object p0, Lcom/shabakaty/downloader/lr0;->b:Lcom/shabakaty/downloader/mr0;

    const-string p1, "PRIVATE_TO_THIS"

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :pswitch_4
    sget-object p0, Lcom/shabakaty/downloader/lr0;->a:Lcom/shabakaty/downloader/mr0;

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 8
    :pswitch_5
    sget-object p0, Lcom/shabakaty/downloader/lr0;->d:Lcom/shabakaty/downloader/mr0;

    const-string p1, "INTERNAL"

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final b(Lcom/shabakaty/downloader/hj3;Lcom/shabakaty/downloader/ri3;)Lcom/shabakaty/downloader/tq$a;
    .locals 1

    sget-object p0, Lcom/shabakaty/downloader/tq$a;->r:Lcom/shabakaty/downloader/tq$a;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/ij3$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :goto_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    sget-object p0, Lcom/shabakaty/downloader/tq$a;->u:Lcom/shabakaty/downloader/tq$a;

    goto :goto_1

    .line 3
    :cond_2
    sget-object p0, Lcom/shabakaty/downloader/tq$a;->t:Lcom/shabakaty/downloader/tq$a;

    goto :goto_1

    .line 4
    :cond_3
    sget-object p0, Lcom/shabakaty/downloader/tq$a;->s:Lcom/shabakaty/downloader/tq$a;

    :cond_4
    :goto_1
    return-object p0
.end method
