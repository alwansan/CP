.class Lzendesk/support/request/StateAndroidLifecycle;
.super Ljava/lang/Object;
.source "StateAndroidLifecycle.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final STARTED:I = 0x1

.field public static final STOPPED:I = 0x2


# instance fields
.field private final state:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lzendesk/support/request/StateAndroidLifecycle;->state:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lzendesk/support/request/StateAndroidLifecycle;->state:I

    return-void
.end method

.method public static fromState(Lcom/shabakaty/downloader/ec4;)Lzendesk/support/request/StateAndroidLifecycle;
    .locals 1

    .line 1
    const-class v0, Lzendesk/support/request/StateAndroidLifecycle;

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ec4;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/support/request/StateAndroidLifecycle;

    if-eqz p0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Lzendesk/support/request/StateAndroidLifecycle;

    invoke-direct {p0}, Lzendesk/support/request/StateAndroidLifecycle;-><init>()V

    return-object p0
.end method


# virtual methods
.method public getState()I
    .locals 1

    .line 1
    iget v0, p0, Lzendesk/support/request/StateAndroidLifecycle;->state:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "AndroidLifeCycle{state="

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lzendesk/support/request/StateAndroidLifecycle;->state:I

    const/16 v2, 0x7d

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/q12;->a(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
