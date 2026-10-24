.class public final Lcom/shabakaty/downloader/gg$b;
.super Lcom/shabakaty/downloader/eg0$b;
.source "AutoValue_CrashlyticsReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/gg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Lcom/shabakaty/downloader/eg0$e;

.field public h:Lcom/shabakaty/downloader/eg0$d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/eg0$b;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/eg0;Lcom/shabakaty/downloader/gg$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/shabakaty/downloader/eg0$b;-><init>()V

    .line 3
    check-cast p1, Lcom/shabakaty/downloader/gg;

    .line 4
    iget-object p2, p1, Lcom/shabakaty/downloader/gg;->b:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/shabakaty/downloader/gg$b;->a:Ljava/lang/String;

    .line 6
    iget-object p2, p1, Lcom/shabakaty/downloader/gg;->c:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/shabakaty/downloader/gg$b;->b:Ljava/lang/String;

    .line 8
    iget p2, p1, Lcom/shabakaty/downloader/gg;->d:I

    .line 9
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/gg$b;->c:Ljava/lang/Integer;

    .line 10
    iget-object p2, p1, Lcom/shabakaty/downloader/gg;->e:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/shabakaty/downloader/gg$b;->d:Ljava/lang/String;

    .line 12
    iget-object p2, p1, Lcom/shabakaty/downloader/gg;->f:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/shabakaty/downloader/gg$b;->e:Ljava/lang/String;

    .line 14
    iget-object p2, p1, Lcom/shabakaty/downloader/gg;->g:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/shabakaty/downloader/gg$b;->f:Ljava/lang/String;

    .line 16
    iget-object p2, p1, Lcom/shabakaty/downloader/gg;->h:Lcom/shabakaty/downloader/eg0$e;

    .line 17
    iput-object p2, p0, Lcom/shabakaty/downloader/gg$b;->g:Lcom/shabakaty/downloader/eg0$e;

    .line 18
    iget-object p1, p1, Lcom/shabakaty/downloader/gg;->i:Lcom/shabakaty/downloader/eg0$d;

    .line 19
    iput-object p1, p0, Lcom/shabakaty/downloader/gg$b;->h:Lcom/shabakaty/downloader/eg0$d;

    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/eg0;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/gg$b;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, " sdkVersion"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/shabakaty/downloader/gg$b;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, " gmpAppId"

    .line 3
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/gg$b;->c:Ljava/lang/Integer;

    if-nez v1, :cond_2

    const-string v1, " platform"

    .line 5
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/shabakaty/downloader/gg$b;->d:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, " installationUuid"

    .line 7
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    :cond_3
    iget-object v1, p0, Lcom/shabakaty/downloader/gg$b;->e:Ljava/lang/String;

    if-nez v1, :cond_4

    const-string v1, " buildVersion"

    .line 9
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    :cond_4
    iget-object v1, p0, Lcom/shabakaty/downloader/gg$b;->f:Ljava/lang/String;

    if-nez v1, :cond_5

    const-string v1, " displayVersion"

    .line 11
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 13
    new-instance v0, Lcom/shabakaty/downloader/gg;

    iget-object v3, p0, Lcom/shabakaty/downloader/gg$b;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/shabakaty/downloader/gg$b;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/shabakaty/downloader/gg$b;->c:Ljava/lang/Integer;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/shabakaty/downloader/gg$b;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/shabakaty/downloader/gg$b;->e:Ljava/lang/String;

    iget-object v8, p0, Lcom/shabakaty/downloader/gg$b;->f:Ljava/lang/String;

    iget-object v9, p0, Lcom/shabakaty/downloader/gg$b;->g:Lcom/shabakaty/downloader/eg0$e;

    iget-object v10, p0, Lcom/shabakaty/downloader/gg$b;->h:Lcom/shabakaty/downloader/eg0$d;

    const/4 v11, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/shabakaty/downloader/gg;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/eg0$e;Lcom/shabakaty/downloader/eg0$d;Lcom/shabakaty/downloader/gg$a;)V

    return-object v0

    .line 15
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-static {v2, v0}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
