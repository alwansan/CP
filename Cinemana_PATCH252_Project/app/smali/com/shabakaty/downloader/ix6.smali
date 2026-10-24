.class public final Lcom/shabakaty/downloader/ix6;
.super Lcom/shabakaty/downloader/b37;
.source "com.google.android.gms:play-services-cast@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/h77;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ix6$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/b37<",
        "Lcom/shabakaty/downloader/ix6;",
        "Lcom/shabakaty/downloader/ix6$a;",
        ">;",
        "Lcom/shabakaty/downloader/h77;"
    }
.end annotation


# static fields
.field private static volatile zzahx:Lcom/shabakaty/downloader/x77;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/x77<",
            "Lcom/shabakaty/downloader/ix6;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzbmk:Lcom/shabakaty/downloader/ix6;


# instance fields
.field private zzahj:I

.field private zzbhd:Ljava/lang/String;

.field private zzbmh:Lcom/shabakaty/downloader/a47;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/a47<",
            "Lcom/shabakaty/downloader/fy6;",
            ">;"
        }
    .end annotation
.end field

.field private zzbmi:Lcom/shabakaty/downloader/a47;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/a47<",
            "Lcom/shabakaty/downloader/zx6;",
            ">;"
        }
    .end annotation
.end field

.field private zzbmj:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ix6;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ix6;-><init>()V

    .line 2
    sput-object v0, Lcom/shabakaty/downloader/ix6;->zzbmk:Lcom/shabakaty/downloader/ix6;

    .line 3
    const-class v1, Lcom/shabakaty/downloader/ix6;

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/b37;->l(Ljava/lang/Class;Lcom/shabakaty/downloader/b37;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/b37;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/ix6;->zzbhd:Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/z77;->u:Lcom/shabakaty/downloader/z77;

    .line 4
    iput-object v0, p0, Lcom/shabakaty/downloader/ix6;->zzbmh:Lcom/shabakaty/downloader/a47;

    .line 5
    iput-object v0, p0, Lcom/shabakaty/downloader/ix6;->zzbmi:Lcom/shabakaty/downloader/a47;

    return-void
.end method

.method public static synthetic n()Lcom/shabakaty/downloader/ix6;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ix6;->zzbmk:Lcom/shabakaty/downloader/ix6;

    return-object v0
.end method


# virtual methods
.method public final j(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p2, Lcom/shabakaty/downloader/yw6;->a:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 3
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4
    :pswitch_2
    sget-object p1, Lcom/shabakaty/downloader/ix6;->zzahx:Lcom/shabakaty/downloader/x77;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/shabakaty/downloader/ix6;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/shabakaty/downloader/ix6;->zzahx:Lcom/shabakaty/downloader/x77;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/shabakaty/downloader/b37$a;

    sget-object p3, Lcom/shabakaty/downloader/ix6;->zzbmk:Lcom/shabakaty/downloader/ix6;

    invoke-direct {p1, p3}, Lcom/shabakaty/downloader/b37$a;-><init>(Lcom/shabakaty/downloader/b37;)V

    .line 8
    sput-object p1, Lcom/shabakaty/downloader/ix6;->zzahx:Lcom/shabakaty/downloader/x77;

    .line 9
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

    .line 10
    :pswitch_3
    sget-object p1, Lcom/shabakaty/downloader/ix6;->zzbmk:Lcom/shabakaty/downloader/ix6;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzahj"

    aput-object v0, p1, p2

    const-string p2, "zzbhd"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzbmh"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 11
    const-class p3, Lcom/shabakaty/downloader/fy6;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzbmi"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-class p3, Lcom/shabakaty/downloader/zx6;

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzbmj"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0002\u0000\u0001\u1008\u0000\u0002\u001b\u0003\u001b\u0004\u1007\u0001"

    .line 12
    sget-object p3, Lcom/shabakaty/downloader/ix6;->zzbmk:Lcom/shabakaty/downloader/ix6;

    .line 13
    new-instance v0, Lcom/shabakaty/downloader/p87;

    invoke-direct {v0, p3, p2, p1}, Lcom/shabakaty/downloader/p87;-><init>(Lcom/shabakaty/downloader/d77;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 14
    :pswitch_5
    new-instance p1, Lcom/shabakaty/downloader/ix6$a;

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/ix6$a;-><init>(Lcom/shabakaty/downloader/yw6;)V

    return-object p1

    .line 15
    :pswitch_6
    new-instance p1, Lcom/shabakaty/downloader/ix6;

    invoke-direct {p1}, Lcom/shabakaty/downloader/ix6;-><init>()V

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
