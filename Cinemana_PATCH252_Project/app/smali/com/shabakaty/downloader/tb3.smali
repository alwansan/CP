.class public final Lcom/shabakaty/downloader/tb3;
.super Lcom/shabakaty/downloader/qp1;
.source "PerfSession.java"

# interfaces
.implements Lcom/shabakaty/downloader/gs2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/tb3$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/qp1<",
        "Lcom/shabakaty/downloader/tb3;",
        "Lcom/shabakaty/downloader/tb3$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/shabakaty/downloader/tb3;

.field private static volatile PARSER:Lcom/shabakaty/downloader/oa3; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oa3<",
            "Lcom/shabakaty/downloader/tb3;",
            ">;"
        }
    .end annotation
.end field

.field public static final SESSION_ID_FIELD_NUMBER:I = 0x1

.field public static final SESSION_VERBOSITY_FIELD_NUMBER:I = 0x2

.field private static final sessionVerbosity_converter_:Lcom/shabakaty/downloader/y22;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/y22<",
            "Ljava/lang/Integer;",
            "Lcom/shabakaty/downloader/d24;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private sessionId_:Ljava/lang/String;

.field private sessionVerbosity_:Lcom/shabakaty/downloader/x22$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/tb3$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/tb3$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/tb3;->sessionVerbosity_converter_:Lcom/shabakaty/downloader/y22;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/tb3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/tb3;-><init>()V

    .line 3
    sput-object v0, Lcom/shabakaty/downloader/tb3;->DEFAULT_INSTANCE:Lcom/shabakaty/downloader/tb3;

    .line 4
    const-class v1, Lcom/shabakaty/downloader/tb3;

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/qp1;->z(Ljava/lang/Class;Lcom/shabakaty/downloader/qp1;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/qp1;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/tb3;->sessionId_:Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/i22;->u:Lcom/shabakaty/downloader/i22;

    .line 4
    iput-object v0, p0, Lcom/shabakaty/downloader/tb3;->sessionVerbosity_:Lcom/shabakaty/downloader/x22$c;

    return-void
.end method

.method public static synthetic A()Lcom/shabakaty/downloader/tb3;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/tb3;->DEFAULT_INSTANCE:Lcom/shabakaty/downloader/tb3;

    return-object v0
.end method

.method public static B(Lcom/shabakaty/downloader/tb3;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lcom/shabakaty/downloader/tb3;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/tb3;->bitField0_:I

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/tb3;->sessionId_:Ljava/lang/String;

    return-void
.end method

.method public static C(Lcom/shabakaty/downloader/tb3;Lcom/shabakaty/downloader/d24;)V
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/tb3;->sessionVerbosity_:Lcom/shabakaty/downloader/x22$c;

    .line 4
    move-object v1, v0

    check-cast v1, Lcom/shabakaty/downloader/t0;

    .line 5
    iget-boolean v1, v1, Lcom/shabakaty/downloader/t0;->r:Z

    if-nez v1, :cond_1

    .line 6
    check-cast v0, Lcom/shabakaty/downloader/i22;

    .line 7
    iget v1, v0, Lcom/shabakaty/downloader/i22;->t:I

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v1, 0x2

    .line 8
    :goto_0
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/i22;->n(I)Lcom/shabakaty/downloader/x22$c;

    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/shabakaty/downloader/tb3;->sessionVerbosity_:Lcom/shabakaty/downloader/x22$c;

    .line 10
    :cond_1
    iget-object p0, p0, Lcom/shabakaty/downloader/tb3;->sessionVerbosity_:Lcom/shabakaty/downloader/x22$c;

    .line 11
    iget p1, p1, Lcom/shabakaty/downloader/d24;->r:I

    .line 12
    check-cast p0, Lcom/shabakaty/downloader/i22;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/i22;->h(I)V

    return-void
.end method

.method public static F()Lcom/shabakaty/downloader/tb3$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/tb3;->DEFAULT_INSTANCE:Lcom/shabakaty/downloader/tb3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qp1;->r()Lcom/shabakaty/downloader/qp1$a;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/tb3$b;

    return-object v0
.end method


# virtual methods
.method public D(I)Lcom/shabakaty/downloader/d24;
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/tb3;->sessionVerbosity_converter_:Lcom/shabakaty/downloader/y22;

    iget-object v1, p0, Lcom/shabakaty/downloader/tb3;->sessionVerbosity_:Lcom/shabakaty/downloader/x22$c;

    check-cast v1, Lcom/shabakaty/downloader/i22;

    .line 2
    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/i22;->i(I)V

    .line 3
    iget-object v1, v1, Lcom/shabakaty/downloader/i22;->s:[I

    aget p1, v1, p1

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast v0, Lcom/shabakaty/downloader/tb3$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/shabakaty/downloader/d24;->f(I)Lcom/shabakaty/downloader/d24;

    move-result-object p1

    if-nez p1, :cond_0

    .line 6
    sget-object p1, Lcom/shabakaty/downloader/d24;->s:Lcom/shabakaty/downloader/d24;

    :cond_0
    return-object p1
.end method

.method public E()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tb3;->sessionVerbosity_:Lcom/shabakaty/downloader/x22$c;

    check-cast v0, Lcom/shabakaty/downloader/i22;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/i22;->size()I

    move-result v0

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
    sget-object p1, Lcom/shabakaty/downloader/tb3;->PARSER:Lcom/shabakaty/downloader/oa3;

    if-nez p1, :cond_1

    .line 4
    const-class p2, Lcom/shabakaty/downloader/tb3;

    monitor-enter p2

    .line 5
    :try_start_0
    sget-object p1, Lcom/shabakaty/downloader/tb3;->PARSER:Lcom/shabakaty/downloader/oa3;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lcom/shabakaty/downloader/qp1$b;

    sget-object p3, Lcom/shabakaty/downloader/tb3;->DEFAULT_INSTANCE:Lcom/shabakaty/downloader/tb3;

    invoke-direct {p1, p3}, Lcom/shabakaty/downloader/qp1$b;-><init>(Lcom/shabakaty/downloader/qp1;)V

    .line 7
    sput-object p1, Lcom/shabakaty/downloader/tb3;->PARSER:Lcom/shabakaty/downloader/oa3;

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
    sget-object p1, Lcom/shabakaty/downloader/tb3;->DEFAULT_INSTANCE:Lcom/shabakaty/downloader/tb3;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, Lcom/shabakaty/downloader/tb3$b;

    invoke-direct {p1, p3}, Lcom/shabakaty/downloader/tb3$b;-><init>(Lcom/shabakaty/downloader/tb3$a;)V

    return-object p1

    .line 11
    :pswitch_3
    new-instance p1, Lcom/shabakaty/downloader/tb3;

    invoke-direct {p1}, Lcom/shabakaty/downloader/tb3;-><init>()V

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "sessionId_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "sessionVerbosity_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 12
    sget-object p3, Lcom/shabakaty/downloader/d24$a;->a:Lcom/shabakaty/downloader/x22$b;

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u001e"

    .line 13
    sget-object p3, Lcom/shabakaty/downloader/tb3;->DEFAULT_INSTANCE:Lcom/shabakaty/downloader/tb3;

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
