.class public Lcom/shabakaty/downloader/y23;
.super Ljava/lang/Object;
.source "OSInfluenceDataRepository.kt"

# interfaces
.implements Lcom/shabakaty/downloader/gf2;


# instance fields
.field public final r:Lcom/shabakaty/downloader/xl2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/xl2;I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/y23;->r:Lcom/shabakaty/downloader/xl2;

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/y23;->r:Lcom/shabakaty/downloader/xl2;

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/y23;->r:Lcom/shabakaty/downloader/xl2;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/s73;->a:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PREFS_OS_LANGUAGE"

    const-string v2, "en"

    .line 5
    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/s73;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
