.class public final Lcom/shabakaty/downloader/rd0;
.super Ljava/lang/Object;
.source "Scopes.kt"

# interfaces
.implements Lcom/shabakaty/downloader/se0;


# instance fields
.field public final r:Lcom/shabakaty/downloader/me0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/me0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/rd0;->r:Lcom/shabakaty/downloader/me0;

    return-void
.end method


# virtual methods
.method public B()Lcom/shabakaty/downloader/me0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/rd0;->r:Lcom/shabakaty/downloader/me0;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "CoroutineScope(coroutineContext="

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/rd0;->r:Lcom/shabakaty/downloader/me0;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
