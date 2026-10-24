.class public final Lcom/shabakaty/downloader/x6;
.super Lcom/shabakaty/downloader/qp1;
.source "AndroidApplicationInfo.java"

# interfaces
.implements Lcom/shabakaty/downloader/gs2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/x6$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/qp1<",
        "Lcom/shabakaty/downloader/x6;",
        "Lcom/shabakaty/downloader/x6$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/shabakaty/downloader/x6;

.field public static final PACKAGE_NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/shabakaty/downloader/oa3; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oa3<",
            "Lcom/shabakaty/downloader/x6;",
            ">;"
        }
    .end annotation
.end field

.field public static final SDK_VERSION_FIELD_NUMBER:I = 0x2

.field public static final VERSION_NAME_FIELD_NUMBER:I = 0x3


# instance fields
.field private bitField0_:I

.field private packageName_:Ljava/lang/String;

.field private sdkVersion_:Ljava/lang/String;

.field private versionName_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/x6;

    invoke-direct {v0}, Lcom/shabakaty/downloader/x6;-><init>()V

    .line 2
    sput-object v0, Lcom/shabakaty/downloader/x6;->DEFAULT_INSTANCE:Lcom/shabakaty/downloader/x6;

    .line 3
    const-class v1, Lcom/shabakaty/downloader/x6;

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/qp1;->z(Ljava/lang/Class;Lcom/shabakaty/downloader/qp1;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/qp1;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/x6;->packageName_:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/x6;->sdkVersion_:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/shabakaty/downloader/x6;->versionName_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic A()Lcom/shabakaty/downloader/x6;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/x6;->DEFAULT_INSTANCE:Lcom/shabakaty/downloader/x6;

    return-object v0
.end method

.method public static B(Lcom/shabakaty/downloader/x6;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lcom/shabakaty/downloader/x6;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/x6;->bitField0_:I

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/x6;->packageName_:Ljava/lang/String;

    return-void
.end method

.method public static C(Lcom/shabakaty/downloader/x6;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lcom/shabakaty/downloader/x6;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/shabakaty/downloader/x6;->bitField0_:I

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/x6;->sdkVersion_:Ljava/lang/String;

    return-void
.end method

.method public static D(Lcom/shabakaty/downloader/x6;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lcom/shabakaty/downloader/x6;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/shabakaty/downloader/x6;->bitField0_:I

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/x6;->versionName_:Ljava/lang/String;

    return-void
.end method

.method public static E()Lcom/shabakaty/downloader/x6;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/x6;->DEFAULT_INSTANCE:Lcom/shabakaty/downloader/x6;

    return-object v0
.end method

.method public static H()Lcom/shabakaty/downloader/x6$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/x6;->DEFAULT_INSTANCE:Lcom/shabakaty/downloader/x6;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qp1;->r()Lcom/shabakaty/downloader/qp1$a;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/x6$b;

    return-object v0
.end method


# virtual methods
.method public F()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/x6;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public G()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/x6;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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
    sget-object p1, Lcom/shabakaty/downloader/x6;->PARSER:Lcom/shabakaty/downloader/oa3;

    if-nez p1, :cond_1

    .line 4
    const-class p2, Lcom/shabakaty/downloader/x6;

    monitor-enter p2

    .line 5
    :try_start_0
    sget-object p1, Lcom/shabakaty/downloader/x6;->PARSER:Lcom/shabakaty/downloader/oa3;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lcom/shabakaty/downloader/qp1$b;

    sget-object p3, Lcom/shabakaty/downloader/x6;->DEFAULT_INSTANCE:Lcom/shabakaty/downloader/x6;

    invoke-direct {p1, p3}, Lcom/shabakaty/downloader/qp1$b;-><init>(Lcom/shabakaty/downloader/qp1;)V

    .line 7
    sput-object p1, Lcom/shabakaty/downloader/x6;->PARSER:Lcom/shabakaty/downloader/oa3;

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
    sget-object p1, Lcom/shabakaty/downloader/x6;->DEFAULT_INSTANCE:Lcom/shabakaty/downloader/x6;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, Lcom/shabakaty/downloader/x6$b;

    invoke-direct {p1, p3}, Lcom/shabakaty/downloader/x6$b;-><init>(Lcom/shabakaty/downloader/x6$a;)V

    return-object p1

    .line 11
    :pswitch_3
    new-instance p1, Lcom/shabakaty/downloader/x6;

    invoke-direct {p1}, Lcom/shabakaty/downloader/x6;-><init>()V

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "packageName_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "sdkVersion_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "versionName_"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1008\u0002"

    .line 12
    sget-object p3, Lcom/shabakaty/downloader/x6;->DEFAULT_INSTANCE:Lcom/shabakaty/downloader/x6;

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
