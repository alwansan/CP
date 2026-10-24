.class public final Lcom/shabakaty/downloader/ob2;
.super Lcom/shabakaty/downloader/gm;
.source "JvmMetadataVersion.kt"


# static fields
.field public static final g:Lcom/shabakaty/downloader/ob2;


# instance fields
.field public final f:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ob2;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ob2;-><init>([I)V

    sput-object v0, Lcom/shabakaty/downloader/ob2;->g:Lcom/shabakaty/downloader/ob2;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ob2;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ob2;-><init>([I)V

    return-void

    :array_0
    .array-data 4
        0x1
        0x6
        0x0
    .end array-data
.end method

.method public varargs constructor <init>([I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/shabakaty/downloader/ob2;-><init>([IZ)V

    return-void
.end method

.method public constructor <init>([IZ)V
    .locals 1

    const-string v0, "versionArray"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/gm;-><init>([I)V

    iput-boolean p2, p0, Lcom/shabakaty/downloader/ob2;->f:Z

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/gm;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2
    iget v3, p0, Lcom/shabakaty/downloader/gm;->c:I

    if-eqz v3, :cond_3

    .line 3
    :cond_0
    iget-boolean v3, p0, Lcom/shabakaty/downloader/ob2;->f:Z

    if-eqz v3, :cond_1

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/ob2;->g:Lcom/shabakaty/downloader/ob2;

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/gm;->b(Lcom/shabakaty/downloader/gm;)Z

    move-result v0

    goto :goto_0

    .line 5
    :cond_1
    sget-object v3, Lcom/shabakaty/downloader/ob2;->g:Lcom/shabakaty/downloader/ob2;

    .line 6
    iget v4, v3, Lcom/shabakaty/downloader/gm;->b:I

    if-ne v0, v4, :cond_2

    .line 7
    iget v0, p0, Lcom/shabakaty/downloader/gm;->c:I

    iget v3, v3, Lcom/shabakaty/downloader/gm;->c:I

    add-int/2addr v3, v2

    if-gt v0, v3, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method
