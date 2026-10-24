.class public final Lcom/shabakaty/downloader/m92;
.super Ljava/lang/Object;
.source "JobSupport.kt"


# static fields
.field public static final a:Lcom/shabakaty/downloader/j61;

.field public static final b:Lcom/shabakaty/downloader/j61;

.field public static final c:Lcom/shabakaty/downloader/j61;

.field public static final d:Lcom/shabakaty/downloader/j61;

.field public static final e:Lcom/shabakaty/downloader/j61;

.field public static final f:Lcom/shabakaty/downloader/o21;

.field public static final g:Lcom/shabakaty/downloader/o21;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/j61;

    const-string v1, "COMPLETING_ALREADY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/j61;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/downloader/m92;->a:Lcom/shabakaty/downloader/j61;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/j61;

    const-string v1, "COMPLETING_WAITING_CHILDREN"

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/j61;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/downloader/m92;->b:Lcom/shabakaty/downloader/j61;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/j61;

    const-string v1, "COMPLETING_RETRY"

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/j61;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/downloader/m92;->c:Lcom/shabakaty/downloader/j61;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/j61;

    const-string v1, "TOO_LATE_TO_CANCEL"

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/j61;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/downloader/m92;->d:Lcom/shabakaty/downloader/j61;

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/j61;

    const-string v1, "SEALED"

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/j61;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/downloader/m92;->e:Lcom/shabakaty/downloader/j61;

    .line 6
    new-instance v0, Lcom/shabakaty/downloader/o21;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/o21;-><init>(Z)V

    sput-object v0, Lcom/shabakaty/downloader/m92;->f:Lcom/shabakaty/downloader/o21;

    .line 7
    new-instance v0, Lcom/shabakaty/downloader/o21;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/o21;-><init>(Z)V

    sput-object v0, Lcom/shabakaty/downloader/m92;->g:Lcom/shabakaty/downloader/o21;

    return-void
.end method

.method public static final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/shabakaty/downloader/k02;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    check-cast v0, Lcom/shabakaty/downloader/k02;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/shabakaty/downloader/k02;->a:Lcom/shabakaty/downloader/g02;

    if-eqz v0, :cond_1

    move-object p0, v0

    :cond_1
    return-object p0
.end method
