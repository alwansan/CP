.class public Lcom/shabakaty/downloader/r6;
.super Ljava/lang/Object;
.source "AnalyticsEvents.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public r:Ljava/util/List;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "analytics"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/h51;",
            ">;"
        }
    .end annotation
.end field

.field public s:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "userID"
    .end annotation
.end field

.field public t:Ljava/lang/Long;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "identifier"
    .end annotation
.end field

.field public u:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "deviceType"
    .end annotation
.end field

.field public v:I
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "platform_type"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/Long;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/h51;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/r6;->r:Ljava/util/List;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/r6;->s:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/r6;->t:Ljava/lang/Long;

    .line 5
    iput-object v0, p0, Lcom/shabakaty/downloader/r6;->u:Ljava/lang/String;

    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lcom/shabakaty/downloader/r6;->v:I

    .line 7
    iput-object p1, p0, Lcom/shabakaty/downloader/r6;->r:Ljava/util/List;

    .line 8
    iput-object p2, p0, Lcom/shabakaty/downloader/r6;->t:Ljava/lang/Long;

    .line 9
    iput-object p3, p0, Lcom/shabakaty/downloader/r6;->u:Ljava/lang/String;

    .line 10
    iput p4, p0, Lcom/shabakaty/downloader/r6;->v:I

    return-void
.end method
