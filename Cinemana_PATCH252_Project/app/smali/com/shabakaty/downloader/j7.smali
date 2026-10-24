.class public final Lcom/shabakaty/downloader/j7;
.super Lcom/shabakaty/downloader/qp1;
.source "AndroidMemoryReading.java"

# interfaces
.implements Lcom/shabakaty/downloader/gs2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/j7$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/qp1<",
        "Lcom/shabakaty/downloader/j7;",
        "Lcom/shabakaty/downloader/j7$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final CLIENT_TIME_US_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/shabakaty/downloader/j7;

.field private static volatile PARSER:Lcom/shabakaty/downloader/oa3; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oa3<",
            "Lcom/shabakaty/downloader/j7;",
            ">;"
        }
    .end annotation
.end field

.field public static final USED_APP_JAVA_HEAP_MEMORY_KB_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private clientTimeUs_:J

.field private usedAppJavaHeapMemoryKb_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/j7;

    invoke-direct {v0}, Lcom/shabakaty/downloader/j7;-><init>()V

    .line 2
    sput-object v0, Lcom/shabakaty/downloader/j7;->DEFAULT_INSTANCE:Lcom/shabakaty/downloader/j7;

    .line 3
    const-class v1, Lcom/shabakaty/downloader/j7;

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/qp1;->z(Ljava/lang/Class;Lcom/shabakaty/downloader/qp1;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/qp1;-><init>()V

    return-void
.end method

.method public static synthetic A()Lcom/shabakaty/downloader/j7;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/j7;->DEFAULT_INSTANCE:Lcom/shabakaty/downloader/j7;

    return-object v0
.end method

.method public static B(Lcom/shabakaty/downloader/j7;J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/j7;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/j7;->bitField0_:I

    .line 2
    iput-wide p1, p0, Lcom/shabakaty/downloader/j7;->clientTimeUs_:J

    return-void
.end method

.method public static C(Lcom/shabakaty/downloader/j7;I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/j7;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/shabakaty/downloader/j7;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/j7;->usedAppJavaHeapMemoryKb_:I

    return-void
.end method

.method public static D()Lcom/shabakaty/downloader/j7$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/j7;->DEFAULT_INSTANCE:Lcom/shabakaty/downloader/j7;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qp1;->r()Lcom/shabakaty/downloader/qp1$a;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/j7$b;

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
    sget-object p1, Lcom/shabakaty/downloader/j7;->PARSER:Lcom/shabakaty/downloader/oa3;

    if-nez p1, :cond_1

    .line 4
    const-class p2, Lcom/shabakaty/downloader/j7;

    monitor-enter p2

    .line 5
    :try_start_0
    sget-object p1, Lcom/shabakaty/downloader/j7;->PARSER:Lcom/shabakaty/downloader/oa3;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lcom/shabakaty/downloader/qp1$b;

    sget-object p3, Lcom/shabakaty/downloader/j7;->DEFAULT_INSTANCE:Lcom/shabakaty/downloader/j7;

    invoke-direct {p1, p3}, Lcom/shabakaty/downloader/qp1$b;-><init>(Lcom/shabakaty/downloader/qp1;)V

    .line 7
    sput-object p1, Lcom/shabakaty/downloader/j7;->PARSER:Lcom/shabakaty/downloader/oa3;

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
    sget-object p1, Lcom/shabakaty/downloader/j7;->DEFAULT_INSTANCE:Lcom/shabakaty/downloader/j7;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, Lcom/shabakaty/downloader/j7$b;

    invoke-direct {p1, p3}, Lcom/shabakaty/downloader/j7$b;-><init>(Lcom/shabakaty/downloader/j7$a;)V

    return-object p1

    .line 11
    :pswitch_3
    new-instance p1, Lcom/shabakaty/downloader/j7;

    invoke-direct {p1}, Lcom/shabakaty/downloader/j7;-><init>()V

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "clientTimeUs_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "usedAppJavaHeapMemoryKb_"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1002\u0000\u0002\u1004\u0001"

    .line 12
    sget-object p3, Lcom/shabakaty/downloader/j7;->DEFAULT_INSTANCE:Lcom/shabakaty/downloader/j7;

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

    nop

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
