.class public final Lcom/shabakaty/downloader/ef0;
.super Lcom/shabakaty/downloader/qp1;
.source "CpuMetricReading.java"

# interfaces
.implements Lcom/shabakaty/downloader/gs2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ef0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/qp1<",
        "Lcom/shabakaty/downloader/ef0;",
        "Lcom/shabakaty/downloader/ef0$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final CLIENT_TIME_US_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/shabakaty/downloader/ef0;

.field private static volatile PARSER:Lcom/shabakaty/downloader/oa3; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oa3<",
            "Lcom/shabakaty/downloader/ef0;",
            ">;"
        }
    .end annotation
.end field

.field public static final SYSTEM_TIME_US_FIELD_NUMBER:I = 0x3

.field public static final USER_TIME_US_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private clientTimeUs_:J

.field private systemTimeUs_:J

.field private userTimeUs_:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ef0;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ef0;-><init>()V

    .line 2
    sput-object v0, Lcom/shabakaty/downloader/ef0;->DEFAULT_INSTANCE:Lcom/shabakaty/downloader/ef0;

    .line 3
    const-class v1, Lcom/shabakaty/downloader/ef0;

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/qp1;->z(Ljava/lang/Class;Lcom/shabakaty/downloader/qp1;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/qp1;-><init>()V

    return-void
.end method

.method public static synthetic A()Lcom/shabakaty/downloader/ef0;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ef0;->DEFAULT_INSTANCE:Lcom/shabakaty/downloader/ef0;

    return-object v0
.end method

.method public static B(Lcom/shabakaty/downloader/ef0;J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/ef0;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/ef0;->bitField0_:I

    .line 2
    iput-wide p1, p0, Lcom/shabakaty/downloader/ef0;->clientTimeUs_:J

    return-void
.end method

.method public static C(Lcom/shabakaty/downloader/ef0;J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/ef0;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/shabakaty/downloader/ef0;->bitField0_:I

    .line 2
    iput-wide p1, p0, Lcom/shabakaty/downloader/ef0;->userTimeUs_:J

    return-void
.end method

.method public static D(Lcom/shabakaty/downloader/ef0;J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/ef0;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/shabakaty/downloader/ef0;->bitField0_:I

    .line 2
    iput-wide p1, p0, Lcom/shabakaty/downloader/ef0;->systemTimeUs_:J

    return-void
.end method

.method public static E()Lcom/shabakaty/downloader/ef0$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ef0;->DEFAULT_INSTANCE:Lcom/shabakaty/downloader/ef0;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qp1;->r()Lcom/shabakaty/downloader/qp1$a;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ef0$b;

    return-object v0
.end method


# virtual methods
.method public final t(Lcom/shabakaty/downloader/qp1$e;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 3
    :pswitch_0
    sget-object p1, Lcom/shabakaty/downloader/ef0;->PARSER:Lcom/shabakaty/downloader/oa3;

    if-nez p1, :cond_1

    .line 4
    const-class p2, Lcom/shabakaty/downloader/ef0;

    monitor-enter p2

    .line 5
    :try_start_0
    sget-object p1, Lcom/shabakaty/downloader/ef0;->PARSER:Lcom/shabakaty/downloader/oa3;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lcom/shabakaty/downloader/qp1$b;

    sget-object p3, Lcom/shabakaty/downloader/ef0;->DEFAULT_INSTANCE:Lcom/shabakaty/downloader/ef0;

    invoke-direct {p1, p3}, Lcom/shabakaty/downloader/qp1$b;-><init>(Lcom/shabakaty/downloader/qp1;)V

    .line 7
    sput-object p1, Lcom/shabakaty/downloader/ef0;->PARSER:Lcom/shabakaty/downloader/oa3;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 8
    :cond_0
    :goto_0
    monitor-exit p2

    goto :goto_2

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_2
    return-object p1

    .line 9
    :pswitch_1
    sget-object p1, Lcom/shabakaty/downloader/ef0;->DEFAULT_INSTANCE:Lcom/shabakaty/downloader/ef0;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, Lcom/shabakaty/downloader/ef0$b;

    invoke-direct {p1, p3}, Lcom/shabakaty/downloader/ef0$b;-><init>(Lcom/shabakaty/downloader/ef0$a;)V

    return-object p1

    .line 11
    :pswitch_3
    new-instance p1, Lcom/shabakaty/downloader/ef0;

    invoke-direct {p1}, Lcom/shabakaty/downloader/ef0;-><init>()V

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "clientTimeUs_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "userTimeUs_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "systemTimeUs_"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1002\u0000\u0002\u1002\u0001\u0003\u1002\u0002"

    .line 12
    sget-object p3, Lcom/shabakaty/downloader/ef0;->DEFAULT_INSTANCE:Lcom/shabakaty/downloader/ef0;

    .line 13
    new-instance v0, Lcom/shabakaty/downloader/wm3;

    invoke-direct {v0, p3, p2, p1}, Lcom/shabakaty/downloader/wm3;-><init>(Lcom/shabakaty/downloader/ds2;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :pswitch_5
    return-object p3

    .line 14
    :pswitch_6
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
