.class public final Lcom/shabakaty/downloader/sx6;
.super Lcom/shabakaty/downloader/b37;
.source "com.google.android.gms:play-services-cast@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/h77;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/sx6$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/b37<",
        "Lcom/shabakaty/downloader/sx6;",
        "Lcom/shabakaty/downloader/sx6$a;",
        ">;",
        "Lcom/shabakaty/downloader/h77;"
    }
.end annotation


# static fields
.field private static volatile zzahx:Lcom/shabakaty/downloader/x77;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/x77<",
            "Lcom/shabakaty/downloader/sx6;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzbga:Lcom/shabakaty/downloader/sx6;


# instance fields
.field private zzahj:I

.field private zzbfq:Lcom/shabakaty/downloader/zx6;

.field private zzbfr:Z

.field private zzbfs:J

.field private zzbft:I

.field private zzbfu:I

.field private zzbfv:I

.field private zzbfw:I

.field private zzbfx:I

.field private zzbfy:Lcom/shabakaty/downloader/gx6;

.field private zzbfz:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/sx6;

    invoke-direct {v0}, Lcom/shabakaty/downloader/sx6;-><init>()V

    .line 2
    sput-object v0, Lcom/shabakaty/downloader/sx6;->zzbga:Lcom/shabakaty/downloader/sx6;

    .line 3
    const-class v1, Lcom/shabakaty/downloader/sx6;

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/b37;->l(Ljava/lang/Class;Lcom/shabakaty/downloader/b37;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/b37;-><init>()V

    return-void
.end method

.method public static n(Lcom/shabakaty/downloader/sx6;)Lcom/shabakaty/downloader/sx6$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/sx6;->zzbga:Lcom/shabakaty/downloader/sx6;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/b37;->m()Lcom/shabakaty/downloader/b37$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/b37$b;->i(Lcom/shabakaty/downloader/b37;)Lcom/shabakaty/downloader/b37$b;

    .line 3
    check-cast v0, Lcom/shabakaty/downloader/sx6$a;

    return-object v0
.end method

.method public static o(Lcom/shabakaty/downloader/sx6;I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/sx6;->zzahj:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/shabakaty/downloader/sx6;->zzahj:I

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/sx6;->zzbfw:I

    return-void
.end method

.method public static p(Lcom/shabakaty/downloader/sx6;J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/sx6;->zzahj:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/shabakaty/downloader/sx6;->zzahj:I

    .line 2
    iput-wide p1, p0, Lcom/shabakaty/downloader/sx6;->zzbfs:J

    return-void
.end method

.method public static q(Lcom/shabakaty/downloader/sx6;Lcom/shabakaty/downloader/zx6;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/sx6;->zzbfq:Lcom/shabakaty/downloader/zx6;

    .line 4
    iget p1, p0, Lcom/shabakaty/downloader/sx6;->zzahj:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/shabakaty/downloader/sx6;->zzahj:I

    return-void
.end method

.method public static r(Lcom/shabakaty/downloader/sx6;Z)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/sx6;->zzahj:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/shabakaty/downloader/sx6;->zzahj:I

    .line 2
    iput-boolean p1, p0, Lcom/shabakaty/downloader/sx6;->zzbfr:Z

    return-void
.end method

.method public static s(Lcom/shabakaty/downloader/sx6;I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/sx6;->zzahj:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/shabakaty/downloader/sx6;->zzahj:I

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/sx6;->zzbfx:I

    return-void
.end method

.method public static t()Lcom/shabakaty/downloader/sx6$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/sx6;->zzbga:Lcom/shabakaty/downloader/sx6;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/b37;->m()Lcom/shabakaty/downloader/b37$b;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/sx6$a;

    return-object v0
.end method

.method public static u()Lcom/shabakaty/downloader/sx6;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/sx6;->zzbga:Lcom/shabakaty/downloader/sx6;

    return-object v0
.end method

.method public static synthetic v()Lcom/shabakaty/downloader/sx6;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/sx6;->zzbga:Lcom/shabakaty/downloader/sx6;

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
    sget-object p1, Lcom/shabakaty/downloader/sx6;->zzahx:Lcom/shabakaty/downloader/x77;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/shabakaty/downloader/sx6;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/shabakaty/downloader/sx6;->zzahx:Lcom/shabakaty/downloader/x77;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/shabakaty/downloader/b37$a;

    sget-object p3, Lcom/shabakaty/downloader/sx6;->zzbga:Lcom/shabakaty/downloader/sx6;

    invoke-direct {p1, p3}, Lcom/shabakaty/downloader/b37$a;-><init>(Lcom/shabakaty/downloader/b37;)V

    .line 8
    sput-object p1, Lcom/shabakaty/downloader/sx6;->zzahx:Lcom/shabakaty/downloader/x77;

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
    sget-object p1, Lcom/shabakaty/downloader/sx6;->zzbga:Lcom/shabakaty/downloader/sx6;

    return-object p1

    :pswitch_4
    const/16 p1, 0xe

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzahj"

    aput-object v0, p1, p2

    const-string p2, "zzbfq"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzbfr"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzbfs"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzbft"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzbfu"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    .line 11
    sget-object p3, Lcom/shabakaty/downloader/ii6;->a:Lcom/shabakaty/downloader/q37;

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzbfv"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    .line 12
    sget-object p3, Lcom/shabakaty/downloader/gh6;->s:[Lcom/shabakaty/downloader/gh6;

    sget-object p3, Lcom/shabakaty/downloader/ph6;->a:Lcom/shabakaty/downloader/q37;

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzbfw"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzbfx"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzbfy"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "zzbfz"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    .line 13
    sget-object p3, Lcom/shabakaty/downloader/km6;->a:Lcom/shabakaty/downloader/q37;

    aput-object p3, p1, p2

    const-string p2, "\u0001\n\u0000\u0001\u0001\n\n\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1007\u0001\u0003\u1005\u0002\u0004\u1006\u0003\u0005\u100c\u0004\u0006\u100c\u0005\u0007\u1004\u0006\u0008\u1004\u0007\t\u1009\u0008\n\u100c\t"

    .line 14
    sget-object p3, Lcom/shabakaty/downloader/sx6;->zzbga:Lcom/shabakaty/downloader/sx6;

    .line 15
    new-instance v0, Lcom/shabakaty/downloader/p87;

    invoke-direct {v0, p3, p2, p1}, Lcom/shabakaty/downloader/p87;-><init>(Lcom/shabakaty/downloader/d77;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 16
    :pswitch_5
    new-instance p1, Lcom/shabakaty/downloader/sx6$a;

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/sx6$a;-><init>(Lcom/shabakaty/downloader/yw6;)V

    return-object p1

    .line 17
    :pswitch_6
    new-instance p1, Lcom/shabakaty/downloader/sx6;

    invoke-direct {p1}, Lcom/shabakaty/downloader/sx6;-><init>()V

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
