.class public final Lcom/shabakaty/downloader/mv2;
.super Ljava/lang/Object;
.source "MultiFormatWriter.java"

# interfaces
.implements Lcom/shabakaty/downloader/a95;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public J(Ljava/lang/String;Lcom/shabakaty/downloader/si;IILjava/util/Map;)Lcom/shabakaty/downloader/jm;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/si;",
            "II",
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/f31;",
            "*>;)",
            "Lcom/shabakaty/downloader/jm;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2
    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "No encoder available for format "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :pswitch_1
    new-instance v0, Lcom/shabakaty/downloader/dv4;

    invoke-direct {v0}, Lcom/shabakaty/downloader/dv4;-><init>()V

    goto :goto_0

    .line 4
    :pswitch_2
    new-instance v0, Lcom/shabakaty/downloader/fq1;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/fq1;-><init>(I)V

    goto :goto_0

    .line 5
    :pswitch_3
    new-instance v0, Lcom/shabakaty/downloader/wt2;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/wt2;-><init>(I)V

    goto :goto_0

    .line 6
    :pswitch_4
    new-instance v0, Lcom/shabakaty/downloader/i17;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/i17;-><init>(I)V

    goto :goto_0

    .line 7
    :pswitch_5
    new-instance v0, Lcom/shabakaty/downloader/kx1;

    invoke-direct {v0}, Lcom/shabakaty/downloader/kx1;-><init>()V

    goto :goto_0

    .line 8
    :pswitch_6
    new-instance v0, Lcom/shabakaty/downloader/w11;

    invoke-direct {v0}, Lcom/shabakaty/downloader/w11;-><init>()V

    goto :goto_0

    .line 9
    :pswitch_7
    new-instance v0, Lcom/shabakaty/downloader/x11;

    invoke-direct {v0}, Lcom/shabakaty/downloader/x11;-><init>()V

    goto :goto_0

    .line 10
    :pswitch_8
    new-instance v0, Lcom/shabakaty/downloader/c21;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/c21;-><init>(I)V

    goto :goto_0

    .line 11
    :pswitch_9
    new-instance v0, Lcom/shabakaty/downloader/n40;

    invoke-direct {v0}, Lcom/shabakaty/downloader/n40;-><init>()V

    goto :goto_0

    .line 12
    :pswitch_a
    new-instance v0, Lcom/shabakaty/downloader/r40;

    invoke-direct {v0}, Lcom/shabakaty/downloader/r40;-><init>()V

    goto :goto_0

    .line 13
    :pswitch_b
    new-instance v0, Lcom/shabakaty/downloader/p40;

    invoke-direct {v0}, Lcom/shabakaty/downloader/p40;-><init>()V

    goto :goto_0

    .line 14
    :pswitch_c
    new-instance v0, Lcom/shabakaty/downloader/l40;

    invoke-direct {v0}, Lcom/shabakaty/downloader/l40;-><init>()V

    goto :goto_0

    .line 15
    :pswitch_d
    new-instance v0, Lcom/shabakaty/downloader/cp6;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/cp6;-><init>(I)V

    :goto_0
    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    .line 16
    invoke-interface/range {v2 .. v7}, Lcom/shabakaty/downloader/a95;->J(Ljava/lang/String;Lcom/shabakaty/downloader/si;IILjava/util/Map;)Lcom/shabakaty/downloader/jm;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
