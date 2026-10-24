.class public final Lcom/shabakaty/downloader/oy2;
.super Lcom/shabakaty/downloader/qp1;
.source "NetworkRequestMetric.java"

# interfaces
.implements Lcom/shabakaty/downloader/gs2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/oy2$b;,
        Lcom/shabakaty/downloader/oy2$c;,
        Lcom/shabakaty/downloader/oy2$e;,
        Lcom/shabakaty/downloader/oy2$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/qp1<",
        "Lcom/shabakaty/downloader/oy2;",
        "Lcom/shabakaty/downloader/oy2$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final CLIENT_START_TIME_US_FIELD_NUMBER:I = 0x7

.field public static final CUSTOM_ATTRIBUTES_FIELD_NUMBER:I = 0xc

.field private static final DEFAULT_INSTANCE:Lcom/shabakaty/downloader/oy2;

.field public static final HTTP_METHOD_FIELD_NUMBER:I = 0x2

.field public static final HTTP_RESPONSE_CODE_FIELD_NUMBER:I = 0x5

.field public static final NETWORK_CLIENT_ERROR_REASON_FIELD_NUMBER:I = 0xb

.field private static volatile PARSER:Lcom/shabakaty/downloader/oa3; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oa3<",
            "Lcom/shabakaty/downloader/oy2;",
            ">;"
        }
    .end annotation
.end field

.field public static final PERF_SESSIONS_FIELD_NUMBER:I = 0xd

.field public static final REQUEST_PAYLOAD_BYTES_FIELD_NUMBER:I = 0x3

.field public static final RESPONSE_CONTENT_TYPE_FIELD_NUMBER:I = 0x6

.field public static final RESPONSE_PAYLOAD_BYTES_FIELD_NUMBER:I = 0x4

.field public static final TIME_TO_REQUEST_COMPLETED_US_FIELD_NUMBER:I = 0x8

.field public static final TIME_TO_RESPONSE_COMPLETED_US_FIELD_NUMBER:I = 0xa

.field public static final TIME_TO_RESPONSE_INITIATED_US_FIELD_NUMBER:I = 0x9

.field public static final URL_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private clientStartTimeUs_:J

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

.field private httpMethod_:I

.field private httpResponseCode_:I

.field private networkClientErrorReason_:I

.field private perfSessions_:Lcom/shabakaty/downloader/x22$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/x22$d<",
            "Lcom/shabakaty/downloader/tb3;",
            ">;"
        }
    .end annotation
.end field

.field private requestPayloadBytes_:J

.field private responseContentType_:Ljava/lang/String;

.field private responsePayloadBytes_:J

.field private timeToRequestCompletedUs_:J

.field private timeToResponseCompletedUs_:J

.field private timeToResponseInitiatedUs_:J

.field private url_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/oy2;

    invoke-direct {v0}, Lcom/shabakaty/downloader/oy2;-><init>()V

    .line 2
    sput-object v0, Lcom/shabakaty/downloader/oy2;->DEFAULT_INSTANCE:Lcom/shabakaty/downloader/oy2;

    .line 3
    const-class v1, Lcom/shabakaty/downloader/oy2;

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
    iput-object v0, p0, Lcom/shabakaty/downloader/oy2;->customAttributes_:Lcom/shabakaty/downloader/jm2;

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/shabakaty/downloader/oy2;->url_:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/shabakaty/downloader/oy2;->responseContentType_:Ljava/lang/String;

    .line 6
    sget-object v0, Lcom/shabakaty/downloader/kj3;->u:Lcom/shabakaty/downloader/kj3;

    .line 7
    iput-object v0, p0, Lcom/shabakaty/downloader/oy2;->perfSessions_:Lcom/shabakaty/downloader/x22$d;

    return-void
.end method

.method public static synthetic A()Lcom/shabakaty/downloader/oy2;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/oy2;->DEFAULT_INSTANCE:Lcom/shabakaty/downloader/oy2;

    return-object v0
.end method

.method public static B(Lcom/shabakaty/downloader/oy2;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lcom/shabakaty/downloader/oy2;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/oy2;->bitField0_:I

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/oy2;->url_:Ljava/lang/String;

    return-void
.end method

.method public static C(Lcom/shabakaty/downloader/oy2;Lcom/shabakaty/downloader/oy2$e;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget p1, p1, Lcom/shabakaty/downloader/oy2$e;->r:I

    .line 3
    iput p1, p0, Lcom/shabakaty/downloader/oy2;->networkClientErrorReason_:I

    .line 4
    iget p1, p0, Lcom/shabakaty/downloader/oy2;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/shabakaty/downloader/oy2;->bitField0_:I

    return-void
.end method

.method public static D(Lcom/shabakaty/downloader/oy2;I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/oy2;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/shabakaty/downloader/oy2;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/oy2;->httpResponseCode_:I

    return-void
.end method

.method public static E(Lcom/shabakaty/downloader/oy2;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lcom/shabakaty/downloader/oy2;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/shabakaty/downloader/oy2;->bitField0_:I

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/oy2;->responseContentType_:Ljava/lang/String;

    return-void
.end method

.method public static F(Lcom/shabakaty/downloader/oy2;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/oy2;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/shabakaty/downloader/oy2;->bitField0_:I

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/oy2;->DEFAULT_INSTANCE:Lcom/shabakaty/downloader/oy2;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/oy2;->responseContentType_:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/shabakaty/downloader/oy2;->responseContentType_:Ljava/lang/String;

    return-void
.end method

.method public static G(Lcom/shabakaty/downloader/oy2;J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/oy2;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/shabakaty/downloader/oy2;->bitField0_:I

    .line 2
    iput-wide p1, p0, Lcom/shabakaty/downloader/oy2;->clientStartTimeUs_:J

    return-void
.end method

.method public static H(Lcom/shabakaty/downloader/oy2;J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/oy2;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/shabakaty/downloader/oy2;->bitField0_:I

    .line 2
    iput-wide p1, p0, Lcom/shabakaty/downloader/oy2;->timeToRequestCompletedUs_:J

    return-void
.end method

.method public static I(Lcom/shabakaty/downloader/oy2;J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/oy2;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/shabakaty/downloader/oy2;->bitField0_:I

    .line 2
    iput-wide p1, p0, Lcom/shabakaty/downloader/oy2;->timeToResponseInitiatedUs_:J

    return-void
.end method

.method public static J(Lcom/shabakaty/downloader/oy2;J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/oy2;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/shabakaty/downloader/oy2;->bitField0_:I

    .line 2
    iput-wide p1, p0, Lcom/shabakaty/downloader/oy2;->timeToResponseCompletedUs_:J

    return-void
.end method

.method public static K(Lcom/shabakaty/downloader/oy2;Ljava/lang/Iterable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/oy2;->perfSessions_:Lcom/shabakaty/downloader/x22$d;

    .line 2
    invoke-interface {v0}, Lcom/shabakaty/downloader/x22$d;->w1()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/qp1;->x(Lcom/shabakaty/downloader/x22$d;)Lcom/shabakaty/downloader/x22$d;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/oy2;->perfSessions_:Lcom/shabakaty/downloader/x22$d;

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/shabakaty/downloader/oy2;->perfSessions_:Lcom/shabakaty/downloader/x22$d;

    invoke-static {p1, p0}, Lcom/shabakaty/downloader/i0;->d(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static L(Lcom/shabakaty/downloader/oy2;Lcom/shabakaty/downloader/oy2$d;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget p1, p1, Lcom/shabakaty/downloader/oy2$d;->r:I

    .line 3
    iput p1, p0, Lcom/shabakaty/downloader/oy2;->httpMethod_:I

    .line 4
    iget p1, p0, Lcom/shabakaty/downloader/oy2;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/shabakaty/downloader/oy2;->bitField0_:I

    return-void
.end method

.method public static M(Lcom/shabakaty/downloader/oy2;J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/oy2;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/shabakaty/downloader/oy2;->bitField0_:I

    .line 2
    iput-wide p1, p0, Lcom/shabakaty/downloader/oy2;->requestPayloadBytes_:J

    return-void
.end method

.method public static N(Lcom/shabakaty/downloader/oy2;J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/oy2;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/shabakaty/downloader/oy2;->bitField0_:I

    .line 2
    iput-wide p1, p0, Lcom/shabakaty/downloader/oy2;->responsePayloadBytes_:J

    return-void
.end method

.method public static P()Lcom/shabakaty/downloader/oy2;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/oy2;->DEFAULT_INSTANCE:Lcom/shabakaty/downloader/oy2;

    return-object v0
.end method

.method public static h0()Lcom/shabakaty/downloader/oy2$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/oy2;->DEFAULT_INSTANCE:Lcom/shabakaty/downloader/oy2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qp1;->r()Lcom/shabakaty/downloader/qp1$a;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/oy2$b;

    return-object v0
.end method


# virtual methods
.method public O()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/oy2;->clientStartTimeUs_:J

    return-wide v0
.end method

.method public Q()Lcom/shabakaty/downloader/oy2$d;
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/oy2;->httpMethod_:I

    invoke-static {v0}, Lcom/shabakaty/downloader/oy2$d;->f(I)Lcom/shabakaty/downloader/oy2$d;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/oy2$d;->s:Lcom/shabakaty/downloader/oy2$d;

    :cond_0
    return-object v0
.end method

.method public R()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/oy2;->httpResponseCode_:I

    return v0
.end method

.method public S()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/tb3;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/oy2;->perfSessions_:Lcom/shabakaty/downloader/x22$d;

    return-object v0
.end method

.method public T()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/oy2;->requestPayloadBytes_:J

    return-wide v0
.end method

.method public U()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/oy2;->responsePayloadBytes_:J

    return-wide v0
.end method

.method public V()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/oy2;->timeToRequestCompletedUs_:J

    return-wide v0
.end method

.method public W()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/oy2;->timeToResponseCompletedUs_:J

    return-wide v0
.end method

.method public X()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/oy2;->timeToResponseInitiatedUs_:J

    return-wide v0
.end method

.method public Y()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/oy2;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public Z()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/oy2;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a0()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/oy2;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b0()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/oy2;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c0()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/oy2;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d0()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/oy2;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e0()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/oy2;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f0()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/oy2;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g0()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/oy2;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
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
    sget-object p1, Lcom/shabakaty/downloader/oy2;->PARSER:Lcom/shabakaty/downloader/oa3;

    if-nez p1, :cond_1

    .line 4
    const-class p2, Lcom/shabakaty/downloader/oy2;

    monitor-enter p2

    .line 5
    :try_start_0
    sget-object p1, Lcom/shabakaty/downloader/oy2;->PARSER:Lcom/shabakaty/downloader/oa3;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lcom/shabakaty/downloader/qp1$b;

    sget-object p3, Lcom/shabakaty/downloader/oy2;->DEFAULT_INSTANCE:Lcom/shabakaty/downloader/oy2;

    invoke-direct {p1, p3}, Lcom/shabakaty/downloader/qp1$b;-><init>(Lcom/shabakaty/downloader/qp1;)V

    .line 7
    sput-object p1, Lcom/shabakaty/downloader/oy2;->PARSER:Lcom/shabakaty/downloader/oa3;

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
    sget-object p1, Lcom/shabakaty/downloader/oy2;->DEFAULT_INSTANCE:Lcom/shabakaty/downloader/oy2;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, Lcom/shabakaty/downloader/oy2$b;

    invoke-direct {p1, p3}, Lcom/shabakaty/downloader/oy2$b;-><init>(Lcom/shabakaty/downloader/oy2$a;)V

    return-object p1

    .line 11
    :pswitch_3
    new-instance p1, Lcom/shabakaty/downloader/oy2;

    invoke-direct {p1}, Lcom/shabakaty/downloader/oy2;-><init>()V

    return-object p1

    :pswitch_4
    const/16 p1, 0x12

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "url_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "httpMethod_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 12
    sget-object p3, Lcom/shabakaty/downloader/oy2$d$a;->a:Lcom/shabakaty/downloader/x22$b;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "requestPayloadBytes_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "responsePayloadBytes_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "httpResponseCode_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "responseContentType_"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "clientStartTimeUs_"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "timeToRequestCompletedUs_"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "timeToResponseInitiatedUs_"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "timeToResponseCompletedUs_"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "networkClientErrorReason_"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    .line 13
    sget-object p3, Lcom/shabakaty/downloader/oy2$e$a;->a:Lcom/shabakaty/downloader/x22$b;

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "customAttributes_"

    aput-object p3, p1, p2

    const/16 p2, 0xf

    sget-object p3, Lcom/shabakaty/downloader/oy2$c;->a:Lcom/shabakaty/downloader/im2;

    aput-object p3, p1, p2

    const/16 p2, 0x10

    const-string p3, "perfSessions_"

    aput-object p3, p1, p2

    const/16 p2, 0x11

    const-class p3, Lcom/shabakaty/downloader/tb3;

    aput-object p3, p1, p2

    const-string p2, "\u0001\r\u0000\u0001\u0001\r\r\u0001\u0001\u0000\u0001\u1008\u0000\u0002\u100c\u0001\u0003\u1002\u0002\u0004\u1002\u0003\u0005\u1004\u0005\u0006\u1008\u0006\u0007\u1002\u0007\u0008\u1002\u0008\t\u1002\t\n\u1002\n\u000b\u100c\u0004\u000c2\r\u001b"

    .line 14
    sget-object p3, Lcom/shabakaty/downloader/oy2;->DEFAULT_INSTANCE:Lcom/shabakaty/downloader/oy2;

    .line 15
    new-instance v0, Lcom/shabakaty/downloader/wm3;

    invoke-direct {v0, p3, p2, p1}, Lcom/shabakaty/downloader/wm3;-><init>(Lcom/shabakaty/downloader/ds2;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :pswitch_5
    return-object p3

    .line 16
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
