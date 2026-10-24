.class public final Lcom/shabakaty/downloader/xj6;
.super Lcom/shabakaty/downloader/kv5;

# interfaces
.implements Lcom/shabakaty/downloader/g36;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/xj6$a;,
        Lcom/shabakaty/downloader/xj6$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/kv5<",
        "Lcom/shabakaty/downloader/xj6;",
        "Lcom/shabakaty/downloader/xj6$a;",
        ">;",
        "Lcom/shabakaty/downloader/g36;"
    }
.end annotation


# static fields
.field private static volatile zzbg:Lcom/shabakaty/downloader/p46;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/p46<",
            "Lcom/shabakaty/downloader/xj6;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzbir:Lcom/shabakaty/downloader/xj6;


# instance fields
.field private zzbiq:Lcom/shabakaty/downloader/bx5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/bx5<",
            "Lcom/shabakaty/downloader/xj6$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/xj6;

    invoke-direct {v0}, Lcom/shabakaty/downloader/xj6;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/xj6;->zzbir:Lcom/shabakaty/downloader/xj6;

    const-class v1, Lcom/shabakaty/downloader/xj6;

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/kv5;->g(Ljava/lang/Class;Lcom/shabakaty/downloader/kv5;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/shabakaty/downloader/kv5;-><init>()V

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/w56;->t:Lcom/shabakaty/downloader/w56;

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/xj6;->zzbiq:Lcom/shabakaty/downloader/bx5;

    return-void
.end method

.method public static j()Lcom/shabakaty/downloader/xj6;
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/xj6;->zzbir:Lcom/shabakaty/downloader/xj6;

    return-object v0
.end method

.method public static synthetic k()Lcom/shabakaty/downloader/xj6;
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/xj6;->zzbir:Lcom/shabakaty/downloader/xj6;

    return-object v0
.end method

.method public static l([B)Lcom/shabakaty/downloader/xj6;
    .locals 9

    sget-object v0, Lcom/shabakaty/downloader/xj6;->zzbir:Lcom/shabakaty/downloader/xj6;

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 1
    invoke-virtual {v0, v1, v2, v2}, Lcom/shabakaty/downloader/xj6;->e(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/kv5;

    .line 2
    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/s56;->c:Lcom/shabakaty/downloader/s56;

    .line 3
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/s56;->b(Ljava/lang/Object;)Lcom/shabakaty/downloader/o66;

    move-result-object v3

    const/4 v6, 0x0

    array-length v7, p0

    new-instance v8, Lcom/shabakaty/downloader/kl5;

    invoke-direct {v8}, Lcom/shabakaty/downloader/kl5;-><init>()V

    move-object v4, v0

    move-object v5, p0

    invoke-interface/range {v3 .. v8}, Lcom/shabakaty/downloader/o66;->h(Ljava/lang/Object;[BIILcom/shabakaty/downloader/kl5;)V

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/s56;->b(Ljava/lang/Object;)Lcom/shabakaty/downloader/o66;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/shabakaty/downloader/o66;->g(Ljava/lang/Object;)V

    iget p0, v0, Lcom/shabakaty/downloader/wj5;->zzex:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_4

    const/4 p0, 0x1

    .line 4
    invoke-virtual {v0, p0, v2, v2}, Lcom/shabakaty/downloader/kv5;->e(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    if-ne v3, p0, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    if-nez v3, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/s56;->b(Ljava/lang/Object;)Lcom/shabakaty/downloader/o66;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/o66;->d(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x2

    if-eqz v1, :cond_2

    move-object v4, v0

    goto :goto_0

    :cond_2
    move-object v4, v2

    :goto_0
    invoke-virtual {v0, v3, v4, v2}, Lcom/shabakaty/downloader/kv5;->e(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    if-eqz v1, :cond_3

    .line 5
    check-cast v0, Lcom/shabakaty/downloader/xj6;

    return-object v0

    .line 6
    :cond_3
    new-instance v0, Lcom/shabakaty/downloader/u97;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/u97;-><init>(I)V

    new-instance p0, Lcom/shabakaty/downloader/cx5;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/cx5;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_4
    :try_start_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    invoke-static {}, Lcom/shabakaty/downloader/cx5;->a()Lcom/shabakaty/downloader/cx5;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/shabakaty/downloader/cx5;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/cx5;

    throw p0

    :cond_5
    new-instance v0, Lcom/shabakaty/downloader/cx5;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/cx5;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final e(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, Lcom/shabakaty/downloader/bk6;->a:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/shabakaty/downloader/xj6;->zzbg:Lcom/shabakaty/downloader/p46;

    if-nez p1, :cond_1

    const-class p2, Lcom/shabakaty/downloader/xj6;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/shabakaty/downloader/xj6;->zzbg:Lcom/shabakaty/downloader/p46;

    if-nez p1, :cond_0

    new-instance p1, Lcom/shabakaty/downloader/kv5$b;

    sget-object p3, Lcom/shabakaty/downloader/xj6;->zzbir:Lcom/shabakaty/downloader/xj6;

    invoke-direct {p1, p3}, Lcom/shabakaty/downloader/kv5$b;-><init>(Lcom/shabakaty/downloader/kv5;)V

    sput-object p1, Lcom/shabakaty/downloader/xj6;->zzbg:Lcom/shabakaty/downloader/p46;

    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    :pswitch_3
    sget-object p1, Lcom/shabakaty/downloader/xj6;->zzbir:Lcom/shabakaty/downloader/xj6;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzbiq"

    aput-object v0, p1, p2

    const-class p2, Lcom/shabakaty/downloader/xj6$b;

    aput-object p2, p1, p3

    const-string p2, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0002\u0000\u0001\u0000\u0001\u001b"

    sget-object p3, Lcom/shabakaty/downloader/xj6;->zzbir:Lcom/shabakaty/downloader/xj6;

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/a66;

    invoke-direct {v0, p3, p2, p1}, Lcom/shabakaty/downloader/a66;-><init>(Lcom/shabakaty/downloader/y26;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 2
    :pswitch_5
    new-instance p1, Lcom/shabakaty/downloader/xj6$a;

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/xj6$a;-><init>(Lcom/shabakaty/downloader/bk6;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/shabakaty/downloader/xj6;

    invoke-direct {p1}, Lcom/shabakaty/downloader/xj6;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/xj6$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/xj6;->zzbiq:Lcom/shabakaty/downloader/bx5;

    return-object v0
.end method
