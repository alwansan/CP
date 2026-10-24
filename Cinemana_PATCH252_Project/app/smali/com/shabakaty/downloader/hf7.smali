.class public final Lcom/shabakaty/downloader/hf7;
.super Lcom/shabakaty/downloader/gc7;
.source "com.google.mlkit:vision-common@@16.3.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/gc7<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final transient u:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public transient v:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/gc7;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/shabakaty/downloader/hf7;->u:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/shabakaty/downloader/gc7;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/hf7;->u:Ljava/lang/Object;

    iput p2, p0, Lcom/shabakaty/downloader/hf7;->v:I

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/hf7;->u:Ljava/lang/Object;

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/hf7;->v:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/hf7;->u:Ljava/lang/Object;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/shabakaty/downloader/hf7;->v:I

    :cond_0
    return v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/downloader/hf7;->u:Ljava/lang/Object;

    new-instance v1, Lcom/shabakaty/downloader/td7;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/td7;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public final l([Ljava/lang/Object;I)I
    .locals 1

    iget-object p2, p0, Lcom/shabakaty/downloader/hf7;->u:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1
    aput-object p2, p1, v0

    const/4 p1, 0x1

    return p1
.end method

.method public final m()Lcom/shabakaty/downloader/tf7;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/tf7<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/hf7;->u:Ljava/lang/Object;

    new-instance v1, Lcom/shabakaty/downloader/td7;

    .line 1
    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/td7;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public final p()Z
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/hf7;->v:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final size()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/downloader/hf7;->u:Ljava/lang/Object;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
