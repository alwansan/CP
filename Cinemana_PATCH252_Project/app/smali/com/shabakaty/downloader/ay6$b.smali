.class public final Lcom/shabakaty/downloader/ay6$b;
.super Lcom/shabakaty/downloader/b37;
.source "com.google.android.gms:play-services-cast@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/h77;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ay6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ay6$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/b37<",
        "Lcom/shabakaty/downloader/ay6$b;",
        "Lcom/shabakaty/downloader/ay6$b$a;",
        ">;",
        "Lcom/shabakaty/downloader/h77;"
    }
.end annotation


# static fields
.field private static volatile zzahx:Lcom/shabakaty/downloader/x77;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/x77<",
            "Lcom/shabakaty/downloader/ay6$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzbji:Lcom/shabakaty/downloader/ay6$b;


# instance fields
.field private zzahj:I

.field private zzbje:I

.field private zzbjf:I

.field private zzbjg:I

.field private zzbjh:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ay6$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ay6$b;-><init>()V

    .line 2
    sput-object v0, Lcom/shabakaty/downloader/ay6$b;->zzbji:Lcom/shabakaty/downloader/ay6$b;

    .line 3
    const-class v1, Lcom/shabakaty/downloader/ay6$b;

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/b37;->l(Ljava/lang/Class;Lcom/shabakaty/downloader/b37;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/b37;-><init>()V

    return-void
.end method

.method public static synthetic n()Lcom/shabakaty/downloader/ay6$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ay6$b;->zzbji:Lcom/shabakaty/downloader/ay6$b;

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
    sget-object p1, Lcom/shabakaty/downloader/ay6$b;->zzahx:Lcom/shabakaty/downloader/x77;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/shabakaty/downloader/ay6$b;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/shabakaty/downloader/ay6$b;->zzahx:Lcom/shabakaty/downloader/x77;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/shabakaty/downloader/b37$a;

    sget-object p3, Lcom/shabakaty/downloader/ay6$b;->zzbji:Lcom/shabakaty/downloader/ay6$b;

    invoke-direct {p1, p3}, Lcom/shabakaty/downloader/b37$a;-><init>(Lcom/shabakaty/downloader/b37;)V

    .line 8
    sput-object p1, Lcom/shabakaty/downloader/ay6$b;->zzahx:Lcom/shabakaty/downloader/x77;

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
    sget-object p1, Lcom/shabakaty/downloader/ay6$b;->zzbji:Lcom/shabakaty/downloader/ay6$b;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzahj"

    aput-object v0, p1, p2

    const-string p2, "zzbje"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzbjf"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzbjg"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzbjh"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1004\u0001\u0003\u1004\u0002\u0004\u1004\u0003"

    .line 11
    sget-object p3, Lcom/shabakaty/downloader/ay6$b;->zzbji:Lcom/shabakaty/downloader/ay6$b;

    .line 12
    new-instance v0, Lcom/shabakaty/downloader/p87;

    invoke-direct {v0, p3, p2, p1}, Lcom/shabakaty/downloader/p87;-><init>(Lcom/shabakaty/downloader/d77;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 13
    :pswitch_5
    new-instance p1, Lcom/shabakaty/downloader/ay6$b$a;

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/ay6$b$a;-><init>(Lcom/shabakaty/downloader/yw6;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lcom/shabakaty/downloader/ay6$b;

    invoke-direct {p1}, Lcom/shabakaty/downloader/ay6$b;-><init>()V

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
