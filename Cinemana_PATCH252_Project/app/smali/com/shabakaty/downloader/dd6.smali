.class public final Lcom/shabakaty/downloader/dd6;
.super Lcom/shabakaty/downloader/b37;
.source "com.google.android.gms:play-services-cast@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/h77;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/dd6$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/b37<",
        "Lcom/shabakaty/downloader/dd6;",
        "Lcom/shabakaty/downloader/dd6$a;",
        ">;",
        "Lcom/shabakaty/downloader/h77;"
    }
.end annotation


# static fields
.field private static final zzahw:Lcom/shabakaty/downloader/dd6;

.field private static volatile zzahx:Lcom/shabakaty/downloader/x77;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/x77<",
            "Lcom/shabakaty/downloader/dd6;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzahj:I

.field private zzahk:I

.field private zzahl:I

.field private zzahm:I

.field private zzahn:I

.field private zzaho:I

.field private zzahp:I

.field private zzahq:I

.field private zzahr:I

.field private zzahs:I

.field private zzaht:I

.field private zzahu:I

.field private zzahv:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/dd6;

    invoke-direct {v0}, Lcom/shabakaty/downloader/dd6;-><init>()V

    .line 2
    sput-object v0, Lcom/shabakaty/downloader/dd6;->zzahw:Lcom/shabakaty/downloader/dd6;

    .line 3
    const-class v1, Lcom/shabakaty/downloader/dd6;

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/b37;->l(Ljava/lang/Class;Lcom/shabakaty/downloader/b37;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/b37;-><init>()V

    return-void
.end method

.method public static synthetic n()Lcom/shabakaty/downloader/dd6;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/dd6;->zzahw:Lcom/shabakaty/downloader/dd6;

    return-object v0
.end method


# virtual methods
.method public final j(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p2, Lcom/shabakaty/downloader/cd6;->a:[I

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
    sget-object p1, Lcom/shabakaty/downloader/dd6;->zzahx:Lcom/shabakaty/downloader/x77;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/shabakaty/downloader/dd6;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/shabakaty/downloader/dd6;->zzahx:Lcom/shabakaty/downloader/x77;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/shabakaty/downloader/b37$a;

    sget-object p3, Lcom/shabakaty/downloader/dd6;->zzahw:Lcom/shabakaty/downloader/dd6;

    invoke-direct {p1, p3}, Lcom/shabakaty/downloader/b37$a;-><init>(Lcom/shabakaty/downloader/b37;)V

    .line 8
    sput-object p1, Lcom/shabakaty/downloader/dd6;->zzahx:Lcom/shabakaty/downloader/x77;

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
    sget-object p1, Lcom/shabakaty/downloader/dd6;->zzahw:Lcom/shabakaty/downloader/dd6;

    return-object p1

    :pswitch_4
    const/16 p1, 0x13

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzahj"

    aput-object v0, p1, p2

    const-string p2, "zzahk"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzahl"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzahm"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 11
    sget-object p3, Lcom/shabakaty/downloader/le6;->a:Lcom/shabakaty/downloader/q37;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzahn"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    .line 12
    sget-object p3, Lcom/shabakaty/downloader/qe6;->a:Lcom/shabakaty/downloader/q37;

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzaho"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    .line 13
    sget-object p3, Lcom/shabakaty/downloader/ee6;->a:Lcom/shabakaty/downloader/q37;

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzahp"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    .line 14
    sget-object p3, Lcom/shabakaty/downloader/cf6;->a:Lcom/shabakaty/downloader/q37;

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzahq"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    .line 15
    sget-object p3, Lcom/shabakaty/downloader/if6;->a:Lcom/shabakaty/downloader/q37;

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "zzahr"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    .line 16
    sget-object p3, Lcom/shabakaty/downloader/od6;->a:Lcom/shabakaty/downloader/q37;

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-string p3, "zzahs"

    aput-object p3, p1, p2

    const/16 p2, 0x10

    const-string p3, "zzaht"

    aput-object p3, p1, p2

    const/16 p2, 0x11

    const-string p3, "zzahu"

    aput-object p3, p1, p2

    const/16 p2, 0x12

    const-string p3, "zzahv"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u000c\u0000\u0001\u0001\u000c\u000c\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1004\u0001\u0003\u100c\u0002\u0004\u100c\u0003\u0005\u100c\u0004\u0006\u100c\u0005\u0007\u100c\u0006\u0008\u100c\u0007\t\u1004\u0008\n\u1004\t\u000b\u1004\n\u000c\u1007\u000b"

    .line 17
    sget-object p3, Lcom/shabakaty/downloader/dd6;->zzahw:Lcom/shabakaty/downloader/dd6;

    .line 18
    new-instance v0, Lcom/shabakaty/downloader/p87;

    invoke-direct {v0, p3, p2, p1}, Lcom/shabakaty/downloader/p87;-><init>(Lcom/shabakaty/downloader/d77;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 19
    :pswitch_5
    new-instance p1, Lcom/shabakaty/downloader/dd6$a;

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/dd6$a;-><init>(Lcom/shabakaty/downloader/cd6;)V

    return-object p1

    .line 20
    :pswitch_6
    new-instance p1, Lcom/shabakaty/downloader/dd6;

    invoke-direct {p1}, Lcom/shabakaty/downloader/dd6;-><init>()V

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
