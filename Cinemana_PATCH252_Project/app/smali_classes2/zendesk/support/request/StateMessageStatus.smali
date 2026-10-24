.class Lzendesk/support/request/StateMessageStatus;
.super Ljava/lang/Object;
.source "StateMessageStatus.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DELIVERED:I = 0x2

.field public static final ERROR:I = 0x1

.field public static final PENDING:I = 0x3


# instance fields
.field private final errorResponse:Ljava/lang/String;

.field private final status:I


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lzendesk/support/request/StateMessageStatus;->status:I

    .line 3
    iput-object p2, p0, Lzendesk/support/request/StateMessageStatus;->errorResponse:Ljava/lang/String;

    return-void
.end method

.method public static delivered()Lzendesk/support/request/StateMessageStatus;
    .locals 3

    .line 1
    new-instance v0, Lzendesk/support/request/StateMessageStatus;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzendesk/support/request/StateMessageStatus;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static error(Ljava/lang/String;)Lzendesk/support/request/StateMessageStatus;
    .locals 2

    .line 1
    new-instance v0, Lzendesk/support/request/StateMessageStatus;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lzendesk/support/request/StateMessageStatus;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static pending()Lzendesk/support/request/StateMessageStatus;
    .locals 3

    .line 1
    new-instance v0, Lzendesk/support/request/StateMessageStatus;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzendesk/support/request/StateMessageStatus;-><init>(ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getErrorResponse()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/request/StateMessageStatus;->errorResponse:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lzendesk/support/request/StateMessageStatus;->status:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lzendesk/support/request/StateMessageStatus;->status:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string v0, "Unknown"

    goto :goto_0

    :cond_0
    const-string v0, "Pending"

    goto :goto_0

    :cond_1
    const-string v0, "Delivered"

    goto :goto_0

    :cond_2
    const-string v0, "Error"

    :goto_0
    const-string v1, "MessageState{status="

    const-string v2, ", errorResponse="

    .line 2
    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/t3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lzendesk/support/request/StateMessageStatus;->errorResponse:Ljava/lang/String;

    const/16 v2, 0x7d

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/h61;->a(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
