.class public final Lcom/shabakaty/downloader/ox6;
.super Lcom/shabakaty/downloader/b37;
.source "com.google.android.gms:play-services-cast@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/h77;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ox6$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/b37<",
        "Lcom/shabakaty/downloader/ox6;",
        "Lcom/shabakaty/downloader/ox6$a;",
        ">;",
        "Lcom/shabakaty/downloader/h77;"
    }
.end annotation


# static fields
.field private static volatile zzahx:Lcom/shabakaty/downloader/x77;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/x77<",
            "Lcom/shabakaty/downloader/ox6;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzbex:Lcom/shabakaty/downloader/v37;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/v37<",
            "Ljava/lang/Integer;",
            "Lcom/shabakaty/downloader/lw6;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzbey:Lcom/shabakaty/downloader/ox6;


# instance fields
.field private zzahj:I

.field private zzbet:Lcom/shabakaty/downloader/rx6;

.field private zzbeu:Lcom/shabakaty/downloader/ky6;

.field private zzbev:Lcom/shabakaty/downloader/a47;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/a47<",
            "Lcom/shabakaty/downloader/iy6;",
            ">;"
        }
    .end annotation
.end field

.field private zzbew:Lcom/shabakaty/downloader/y37;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/c21;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/c21;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/ox6;->zzbex:Lcom/shabakaty/downloader/v37;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ox6;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ox6;-><init>()V

    .line 3
    sput-object v0, Lcom/shabakaty/downloader/ox6;->zzbey:Lcom/shabakaty/downloader/ox6;

    .line 4
    const-class v1, Lcom/shabakaty/downloader/ox6;

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/b37;->l(Ljava/lang/Class;Lcom/shabakaty/downloader/b37;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/b37;-><init>()V

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/z77;->u:Lcom/shabakaty/downloader/z77;

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/ox6;->zzbev:Lcom/shabakaty/downloader/a47;

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/i37;->u:Lcom/shabakaty/downloader/i37;

    .line 5
    iput-object v0, p0, Lcom/shabakaty/downloader/ox6;->zzbew:Lcom/shabakaty/downloader/y37;

    return-void
.end method

.method public static n(Lcom/shabakaty/downloader/ox6;Lcom/shabakaty/downloader/rx6;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/ox6;->zzbet:Lcom/shabakaty/downloader/rx6;

    .line 4
    iget p1, p0, Lcom/shabakaty/downloader/ox6;->zzahj:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/shabakaty/downloader/ox6;->zzahj:I

    return-void
.end method

.method public static o(Lcom/shabakaty/downloader/ox6;Ljava/lang/Iterable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ox6;->zzbew:Lcom/shabakaty/downloader/y37;

    .line 2
    move-object v1, v0

    check-cast v1, Lcom/shabakaty/downloader/gz6;

    .line 3
    iget-boolean v1, v1, Lcom/shabakaty/downloader/gz6;->r:Z

    if-nez v1, :cond_1

    .line 4
    check-cast v0, Lcom/shabakaty/downloader/i37;

    .line 5
    iget v1, v0, Lcom/shabakaty/downloader/i37;->t:I

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    shl-int/lit8 v1, v1, 0x1

    .line 6
    :goto_0
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/i37;->i(I)Lcom/shabakaty/downloader/y37;

    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/shabakaty/downloader/ox6;->zzbew:Lcom/shabakaty/downloader/y37;

    .line 8
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/lw6;

    .line 9
    iget-object v1, p0, Lcom/shabakaty/downloader/ox6;->zzbew:Lcom/shabakaty/downloader/y37;

    .line 10
    iget v0, v0, Lcom/shabakaty/downloader/lw6;->r:I

    .line 11
    check-cast v1, Lcom/shabakaty/downloader/i37;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/i37;->l(I)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static p()Lcom/shabakaty/downloader/ox6$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ox6;->zzbey:Lcom/shabakaty/downloader/ox6;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/b37;->m()Lcom/shabakaty/downloader/b37$b;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ox6$a;

    return-object v0
.end method

.method public static synthetic q()Lcom/shabakaty/downloader/ox6;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ox6;->zzbey:Lcom/shabakaty/downloader/ox6;

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
    sget-object p1, Lcom/shabakaty/downloader/ox6;->zzahx:Lcom/shabakaty/downloader/x77;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/shabakaty/downloader/ox6;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/shabakaty/downloader/ox6;->zzahx:Lcom/shabakaty/downloader/x77;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/shabakaty/downloader/b37$a;

    sget-object p3, Lcom/shabakaty/downloader/ox6;->zzbey:Lcom/shabakaty/downloader/ox6;

    invoke-direct {p1, p3}, Lcom/shabakaty/downloader/b37$a;-><init>(Lcom/shabakaty/downloader/b37;)V

    .line 8
    sput-object p1, Lcom/shabakaty/downloader/ox6;->zzahx:Lcom/shabakaty/downloader/x77;

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
    sget-object p1, Lcom/shabakaty/downloader/ox6;->zzbey:Lcom/shabakaty/downloader/ox6;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzahj"

    aput-object v0, p1, p2

    const-string p2, "zzbet"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzbeu"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzbev"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 11
    const-class p3, Lcom/shabakaty/downloader/iy6;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzbew"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    .line 12
    sget-object p3, Lcom/shabakaty/downloader/pw6;->a:Lcom/shabakaty/downloader/q37;

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0002\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u001b\u0004\u001e"

    .line 13
    sget-object p3, Lcom/shabakaty/downloader/ox6;->zzbey:Lcom/shabakaty/downloader/ox6;

    .line 14
    new-instance v0, Lcom/shabakaty/downloader/p87;

    invoke-direct {v0, p3, p2, p1}, Lcom/shabakaty/downloader/p87;-><init>(Lcom/shabakaty/downloader/d77;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 15
    :pswitch_5
    new-instance p1, Lcom/shabakaty/downloader/ox6$a;

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/ox6$a;-><init>(Lcom/shabakaty/downloader/yw6;)V

    return-object p1

    .line 16
    :pswitch_6
    new-instance p1, Lcom/shabakaty/downloader/ox6;

    invoke-direct {p1}, Lcom/shabakaty/downloader/ox6;-><init>()V

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
