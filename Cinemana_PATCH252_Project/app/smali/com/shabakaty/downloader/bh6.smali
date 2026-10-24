.class public final Lcom/shabakaty/downloader/bh6;
.super Lcom/shabakaty/downloader/kv5;

# interfaces
.implements Lcom/shabakaty/downloader/g36;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/bh6$a;,
        Lcom/shabakaty/downloader/bh6$b;,
        Lcom/shabakaty/downloader/bh6$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/kv5<",
        "Lcom/shabakaty/downloader/bh6;",
        "Lcom/shabakaty/downloader/bh6$a;",
        ">;",
        "Lcom/shabakaty/downloader/g36;"
    }
.end annotation


# static fields
.field private static final zzbfc:Lcom/shabakaty/downloader/bh6;

.field private static volatile zzbg:Lcom/shabakaty/downloader/p46;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/p46<",
            "Lcom/shabakaty/downloader/bh6;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzbb:I

.field private zzbfa:I

.field private zzbfb:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/bh6;

    invoke-direct {v0}, Lcom/shabakaty/downloader/bh6;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/bh6;->zzbfc:Lcom/shabakaty/downloader/bh6;

    const-class v1, Lcom/shabakaty/downloader/bh6;

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/kv5;->g(Ljava/lang/Class;Lcom/shabakaty/downloader/kv5;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/shabakaty/downloader/kv5;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/shabakaty/downloader/bh6;->zzbfa:I

    return-void
.end method

.method public static synthetic i()Lcom/shabakaty/downloader/bh6;
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/bh6;->zzbfc:Lcom/shabakaty/downloader/bh6;

    return-object v0
.end method


# virtual methods
.method public final e(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, Lcom/shabakaty/downloader/hh6;->a:[I

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
    sget-object p1, Lcom/shabakaty/downloader/bh6;->zzbg:Lcom/shabakaty/downloader/p46;

    if-nez p1, :cond_1

    const-class p2, Lcom/shabakaty/downloader/bh6;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/shabakaty/downloader/bh6;->zzbg:Lcom/shabakaty/downloader/p46;

    if-nez p1, :cond_0

    new-instance p1, Lcom/shabakaty/downloader/kv5$b;

    sget-object p3, Lcom/shabakaty/downloader/bh6;->zzbfc:Lcom/shabakaty/downloader/bh6;

    invoke-direct {p1, p3}, Lcom/shabakaty/downloader/kv5$b;-><init>(Lcom/shabakaty/downloader/kv5;)V

    sput-object p1, Lcom/shabakaty/downloader/bh6;->zzbg:Lcom/shabakaty/downloader/p46;

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
    sget-object p1, Lcom/shabakaty/downloader/bh6;->zzbfc:Lcom/shabakaty/downloader/bh6;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzbb"

    aput-object v0, p1, p2

    const-string p2, "zzbfa"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    sget-object p3, Lcom/shabakaty/downloader/bh6$c;->L:Lcom/shabakaty/downloader/nw5;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzbfb"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    sget-object p3, Lcom/shabakaty/downloader/bh6$b;->N:Lcom/shabakaty/downloader/nw5;

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0003\u0000\u0000\u0000\u0001\u000c\u0000\u0002\u000c\u0001"

    sget-object p3, Lcom/shabakaty/downloader/bh6;->zzbfc:Lcom/shabakaty/downloader/bh6;

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/a66;

    invoke-direct {v0, p3, p2, p1}, Lcom/shabakaty/downloader/a66;-><init>(Lcom/shabakaty/downloader/y26;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 2
    :pswitch_5
    new-instance p1, Lcom/shabakaty/downloader/bh6$a;

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/bh6$a;-><init>(Lcom/shabakaty/downloader/hh6;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/shabakaty/downloader/bh6;

    invoke-direct {p1}, Lcom/shabakaty/downloader/bh6;-><init>()V

    return-object p1

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
