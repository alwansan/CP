.class public final Lcom/shabakaty/downloader/jy6;
.super Lcom/shabakaty/downloader/b37;
.source "com.google.android.gms:play-services-cast@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/h77;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/jy6$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/b37<",
        "Lcom/shabakaty/downloader/jy6;",
        "Lcom/shabakaty/downloader/jy6$a;",
        ">;",
        "Lcom/shabakaty/downloader/h77;"
    }
.end annotation


# static fields
.field private static volatile zzahx:Lcom/shabakaty/downloader/x77;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/x77<",
            "Lcom/shabakaty/downloader/jy6;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzbkr:Lcom/shabakaty/downloader/jy6;


# instance fields
.field private zzahj:I

.field private zzbim:B

.field private zzbko:I

.field private zzbkp:I

.field private zzbkq:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/jy6;

    invoke-direct {v0}, Lcom/shabakaty/downloader/jy6;-><init>()V

    .line 2
    sput-object v0, Lcom/shabakaty/downloader/jy6;->zzbkr:Lcom/shabakaty/downloader/jy6;

    .line 3
    const-class v1, Lcom/shabakaty/downloader/jy6;

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/b37;->l(Ljava/lang/Class;Lcom/shabakaty/downloader/b37;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/b37;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput-byte v0, p0, Lcom/shabakaty/downloader/jy6;->zzbim:B

    return-void
.end method

.method public static synthetic n()Lcom/shabakaty/downloader/jy6;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/jy6;->zzbkr:Lcom/shabakaty/downloader/jy6;

    return-object v0
.end method


# virtual methods
.method public final j(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object p3, Lcom/shabakaty/downloader/yw6;->a:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p3, p1

    const/4 p3, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :cond_0
    int-to-byte p1, v0

    .line 3
    iput-byte p1, p0, Lcom/shabakaty/downloader/jy6;->zzbim:B

    return-object v1

    .line 4
    :pswitch_1
    iget-byte p1, p0, Lcom/shabakaty/downloader/jy6;->zzbim:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_2
    sget-object p1, Lcom/shabakaty/downloader/jy6;->zzahx:Lcom/shabakaty/downloader/x77;

    if-nez p1, :cond_2

    .line 6
    const-class p2, Lcom/shabakaty/downloader/jy6;

    monitor-enter p2

    .line 7
    :try_start_0
    sget-object p1, Lcom/shabakaty/downloader/jy6;->zzahx:Lcom/shabakaty/downloader/x77;

    if-nez p1, :cond_1

    .line 8
    new-instance p1, Lcom/shabakaty/downloader/b37$a;

    sget-object p3, Lcom/shabakaty/downloader/jy6;->zzbkr:Lcom/shabakaty/downloader/jy6;

    invoke-direct {p1, p3}, Lcom/shabakaty/downloader/b37$a;-><init>(Lcom/shabakaty/downloader/b37;)V

    .line 9
    sput-object p1, Lcom/shabakaty/downloader/jy6;->zzahx:Lcom/shabakaty/downloader/x77;

    .line 10
    :cond_1
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-object p1

    .line 11
    :pswitch_3
    sget-object p1, Lcom/shabakaty/downloader/jy6;->zzbkr:Lcom/shabakaty/downloader/jy6;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzahj"

    aput-object p2, p1, p3

    const-string p2, "zzbko"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    .line 12
    sget-object p3, Lcom/shabakaty/downloader/qp6;->a:Lcom/shabakaty/downloader/q37;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzbkp"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzbkq"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    .line 13
    sget-object p3, Lcom/shabakaty/downloader/tw6;->a:Lcom/shabakaty/downloader/q37;

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0001\u0001\u150c\u0000\u0002\u1004\u0001\u0003\u100c\u0002"

    .line 14
    sget-object p3, Lcom/shabakaty/downloader/jy6;->zzbkr:Lcom/shabakaty/downloader/jy6;

    .line 15
    new-instance v0, Lcom/shabakaty/downloader/p87;

    invoke-direct {v0, p3, p2, p1}, Lcom/shabakaty/downloader/p87;-><init>(Lcom/shabakaty/downloader/d77;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 16
    :pswitch_5
    new-instance p1, Lcom/shabakaty/downloader/jy6$a;

    invoke-direct {p1, v1}, Lcom/shabakaty/downloader/jy6$a;-><init>(Lcom/shabakaty/downloader/yw6;)V

    return-object p1

    .line 17
    :pswitch_6
    new-instance p1, Lcom/shabakaty/downloader/jy6;

    invoke-direct {p1}, Lcom/shabakaty/downloader/jy6;-><init>()V

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
