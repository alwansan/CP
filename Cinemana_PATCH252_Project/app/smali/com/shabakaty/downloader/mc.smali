.class public final Lcom/shabakaty/downloader/mc;
.super Lcom/shabakaty/downloader/qp1;
.source "ApplicationInfo.java"

# interfaces
.implements Lcom/shabakaty/downloader/gs2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/mc$b;,
        Lcom/shabakaty/downloader/mc$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/qp1<",
        "Lcom/shabakaty/downloader/mc;",
        "Lcom/shabakaty/downloader/mc$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final ANDROID_APP_INFO_FIELD_NUMBER:I = 0x3

.field public static final APPLICATION_PROCESS_STATE_FIELD_NUMBER:I = 0x5

.field public static final APP_INSTANCE_ID_FIELD_NUMBER:I = 0x2

.field public static final CUSTOM_ATTRIBUTES_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Lcom/shabakaty/downloader/mc;

.field public static final GOOGLE_APP_ID_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/shabakaty/downloader/oa3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oa3<",
            "Lcom/shabakaty/downloader/mc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private androidAppInfo_:Lcom/shabakaty/downloader/x6;

.field private appInstanceId_:Ljava/lang/String;

.field private applicationProcessState_:I

.field private bitField0_:I

.field private customAttributes_:Lcom/shabakaty/downloader/jm2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/jm2<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private googleAppId_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/mc;

    invoke-direct {v0}, Lcom/shabakaty/downloader/mc;-><init>()V

    .line 2
    sput-object v0, Lcom/shabakaty/downloader/mc;->DEFAULT_INSTANCE:Lcom/shabakaty/downloader/mc;

    .line 3
    const-class v1, Lcom/shabakaty/downloader/mc;

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/qp1;->z(Ljava/lang/Class;Lcom/shabakaty/downloader/qp1;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/qp1;-><init>()V

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/jm2;->s:Lcom/shabakaty/downloader/jm2;

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/mc;->customAttributes_:Lcom/shabakaty/downloader/jm2;

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/shabakaty/downloader/mc;->googleAppId_:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/shabakaty/downloader/mc;->appInstanceId_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic A()Lcom/shabakaty/downloader/mc;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/mc;->DEFAULT_INSTANCE:Lcom/shabakaty/downloader/mc;

    return-object v0
.end method

.method public static B(Lcom/shabakaty/downloader/mc;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lcom/shabakaty/downloader/mc;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/mc;->bitField0_:I

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/mc;->googleAppId_:Ljava/lang/String;

    return-void
.end method

.method public static C(Lcom/shabakaty/downloader/mc;Lcom/shabakaty/downloader/oc;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget p1, p1, Lcom/shabakaty/downloader/oc;->r:I

    .line 3
    iput p1, p0, Lcom/shabakaty/downloader/mc;->applicationProcessState_:I

    .line 4
    iget p1, p0, Lcom/shabakaty/downloader/mc;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/shabakaty/downloader/mc;->bitField0_:I

    return-void
.end method

.method public static D(Lcom/shabakaty/downloader/mc;)Ljava/util/Map;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mc;->customAttributes_:Lcom/shabakaty/downloader/jm2;

    .line 2
    iget-boolean v1, v0, Lcom/shabakaty/downloader/jm2;->r:Z

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/jm2;->c()Lcom/shabakaty/downloader/jm2;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/mc;->customAttributes_:Lcom/shabakaty/downloader/jm2;

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/shabakaty/downloader/mc;->customAttributes_:Lcom/shabakaty/downloader/jm2;

    return-object p0
.end method

.method public static E(Lcom/shabakaty/downloader/mc;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lcom/shabakaty/downloader/mc;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/shabakaty/downloader/mc;->bitField0_:I

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/mc;->appInstanceId_:Ljava/lang/String;

    return-void
.end method

.method public static F(Lcom/shabakaty/downloader/mc;Lcom/shabakaty/downloader/x6;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/mc;->androidAppInfo_:Lcom/shabakaty/downloader/x6;

    .line 3
    iget p1, p0, Lcom/shabakaty/downloader/mc;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/shabakaty/downloader/mc;->bitField0_:I

    return-void
.end method

.method public static H()Lcom/shabakaty/downloader/mc;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/mc;->DEFAULT_INSTANCE:Lcom/shabakaty/downloader/mc;

    return-object v0
.end method

.method public static M()Lcom/shabakaty/downloader/mc$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/mc;->DEFAULT_INSTANCE:Lcom/shabakaty/downloader/mc;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qp1;->r()Lcom/shabakaty/downloader/qp1$a;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/mc$b;

    return-object v0
.end method


# virtual methods
.method public G()Lcom/shabakaty/downloader/x6;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mc;->androidAppInfo_:Lcom/shabakaty/downloader/x6;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/shabakaty/downloader/x6;->E()Lcom/shabakaty/downloader/x6;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public I()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/mc;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public J()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/mc;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public K()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/mc;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public L()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/mc;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

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
    sget-object p1, Lcom/shabakaty/downloader/mc;->PARSER:Lcom/shabakaty/downloader/oa3;

    if-nez p1, :cond_1

    .line 4
    const-class p2, Lcom/shabakaty/downloader/mc;

    monitor-enter p2

    .line 5
    :try_start_0
    sget-object p1, Lcom/shabakaty/downloader/mc;->PARSER:Lcom/shabakaty/downloader/oa3;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lcom/shabakaty/downloader/qp1$b;

    sget-object p3, Lcom/shabakaty/downloader/mc;->DEFAULT_INSTANCE:Lcom/shabakaty/downloader/mc;

    invoke-direct {p1, p3}, Lcom/shabakaty/downloader/qp1$b;-><init>(Lcom/shabakaty/downloader/qp1;)V

    .line 7
    sput-object p1, Lcom/shabakaty/downloader/mc;->PARSER:Lcom/shabakaty/downloader/oa3;

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
    sget-object p1, Lcom/shabakaty/downloader/mc;->DEFAULT_INSTANCE:Lcom/shabakaty/downloader/mc;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, Lcom/shabakaty/downloader/mc$b;

    invoke-direct {p1, p3}, Lcom/shabakaty/downloader/mc$b;-><init>(Lcom/shabakaty/downloader/mc$a;)V

    return-object p1

    .line 11
    :pswitch_3
    new-instance p1, Lcom/shabakaty/downloader/mc;

    invoke-direct {p1}, Lcom/shabakaty/downloader/mc;-><init>()V

    return-object p1

    :pswitch_4
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "googleAppId_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "appInstanceId_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "androidAppInfo_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "applicationProcessState_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    .line 12
    sget-object p3, Lcom/shabakaty/downloader/oc$a;->a:Lcom/shabakaty/downloader/x22$b;

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "customAttributes_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    sget-object p3, Lcom/shabakaty/downloader/mc$c;->a:Lcom/shabakaty/downloader/im2;

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0006\u0005\u0001\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1009\u0002\u0005\u100c\u0003\u00062"

    .line 13
    sget-object p3, Lcom/shabakaty/downloader/mc;->DEFAULT_INSTANCE:Lcom/shabakaty/downloader/mc;

    .line 14
    new-instance v0, Lcom/shabakaty/downloader/wm3;

    invoke-direct {v0, p3, p2, p1}, Lcom/shabakaty/downloader/wm3;-><init>(Lcom/shabakaty/downloader/ds2;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :pswitch_5
    return-object p3

    .line 15
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
