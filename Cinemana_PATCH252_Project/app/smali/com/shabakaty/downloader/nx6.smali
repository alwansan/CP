.class public final Lcom/shabakaty/downloader/nx6;
.super Lcom/shabakaty/downloader/b37;
.source "com.google.android.gms:play-services-cast@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/h77;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/nx6$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/b37<",
        "Lcom/shabakaty/downloader/nx6;",
        "Lcom/shabakaty/downloader/nx6$a;",
        ">;",
        "Lcom/shabakaty/downloader/h77;"
    }
.end annotation


# static fields
.field private static volatile zzahx:Lcom/shabakaty/downloader/x77;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/x77<",
            "Lcom/shabakaty/downloader/nx6;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzbmw:Lcom/shabakaty/downloader/v37;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/v37<",
            "Ljava/lang/Integer;",
            "Lcom/shabakaty/downloader/vv6;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzbmx:Lcom/shabakaty/downloader/nx6;


# instance fields
.field private zzahj:I

.field private zzbis:I

.field private zzbmt:I

.field private zzbmv:Lcom/shabakaty/downloader/y37;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ll3;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ll3;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/nx6;->zzbmw:Lcom/shabakaty/downloader/v37;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/nx6;

    invoke-direct {v0}, Lcom/shabakaty/downloader/nx6;-><init>()V

    .line 3
    sput-object v0, Lcom/shabakaty/downloader/nx6;->zzbmx:Lcom/shabakaty/downloader/nx6;

    .line 4
    const-class v1, Lcom/shabakaty/downloader/nx6;

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/b37;->l(Ljava/lang/Class;Lcom/shabakaty/downloader/b37;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/b37;-><init>()V

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/i37;->u:Lcom/shabakaty/downloader/i37;

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/nx6;->zzbmv:Lcom/shabakaty/downloader/y37;

    return-void
.end method

.method public static synthetic n()Lcom/shabakaty/downloader/nx6;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/nx6;->zzbmx:Lcom/shabakaty/downloader/nx6;

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
    sget-object p1, Lcom/shabakaty/downloader/nx6;->zzahx:Lcom/shabakaty/downloader/x77;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/shabakaty/downloader/nx6;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/shabakaty/downloader/nx6;->zzahx:Lcom/shabakaty/downloader/x77;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/shabakaty/downloader/b37$a;

    sget-object p3, Lcom/shabakaty/downloader/nx6;->zzbmx:Lcom/shabakaty/downloader/nx6;

    invoke-direct {p1, p3}, Lcom/shabakaty/downloader/b37$a;-><init>(Lcom/shabakaty/downloader/b37;)V

    .line 8
    sput-object p1, Lcom/shabakaty/downloader/nx6;->zzahx:Lcom/shabakaty/downloader/x77;

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
    sget-object p1, Lcom/shabakaty/downloader/nx6;->zzbmx:Lcom/shabakaty/downloader/nx6;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzahj"

    aput-object v0, p1, p2

    const-string p2, "zzbis"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 11
    sget-object p3, Lcom/shabakaty/downloader/ew6;->a:Lcom/shabakaty/downloader/q37;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzbmt"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 12
    sget-object p3, Lcom/shabakaty/downloader/wl6;->a:Lcom/shabakaty/downloader/q37;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzbmv"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    .line 13
    sget-object p3, Lcom/shabakaty/downloader/vv6;->s:[Lcom/shabakaty/downloader/vv6;

    sget-object p3, Lcom/shabakaty/downloader/bw6;->a:Lcom/shabakaty/downloader/q37;

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u100c\u0000\u0002\u100c\u0001\u0003\u001e"

    .line 14
    sget-object p3, Lcom/shabakaty/downloader/nx6;->zzbmx:Lcom/shabakaty/downloader/nx6;

    .line 15
    new-instance v0, Lcom/shabakaty/downloader/p87;

    invoke-direct {v0, p3, p2, p1}, Lcom/shabakaty/downloader/p87;-><init>(Lcom/shabakaty/downloader/d77;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 16
    :pswitch_5
    new-instance p1, Lcom/shabakaty/downloader/nx6$a;

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/nx6$a;-><init>(Lcom/shabakaty/downloader/yw6;)V

    return-object p1

    .line 17
    :pswitch_6
    new-instance p1, Lcom/shabakaty/downloader/nx6;

    invoke-direct {p1}, Lcom/shabakaty/downloader/nx6;-><init>()V

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
