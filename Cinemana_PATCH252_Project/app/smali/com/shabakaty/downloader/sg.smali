.class public final Lcom/shabakaty/downloader/sg;
.super Lcom/shabakaty/downloader/eg0$e$d$a$b;
.source "AutoValue_CrashlyticsReport_Session_Event_Application_Execution.java"


# instance fields
.field public final a:Lcom/shabakaty/downloader/zz1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/zz1<",
            "Lcom/shabakaty/downloader/eg0$e$d$a$b$d;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/shabakaty/downloader/eg0$e$d$a$b$b;

.field public final c:Lcom/shabakaty/downloader/eg0$a;

.field public final d:Lcom/shabakaty/downloader/eg0$e$d$a$b$c;

.field public final e:Lcom/shabakaty/downloader/zz1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/zz1<",
            "Lcom/shabakaty/downloader/eg0$e$d$a$b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/zz1;Lcom/shabakaty/downloader/eg0$e$d$a$b$b;Lcom/shabakaty/downloader/eg0$a;Lcom/shabakaty/downloader/eg0$e$d$a$b$c;Lcom/shabakaty/downloader/zz1;Lcom/shabakaty/downloader/sg$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/eg0$e$d$a$b;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/sg;->a:Lcom/shabakaty/downloader/zz1;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/sg;->b:Lcom/shabakaty/downloader/eg0$e$d$a$b$b;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/sg;->c:Lcom/shabakaty/downloader/eg0$a;

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/sg;->d:Lcom/shabakaty/downloader/eg0$e$d$a$b$c;

    .line 6
    iput-object p5, p0, Lcom/shabakaty/downloader/sg;->e:Lcom/shabakaty/downloader/zz1;

    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/eg0$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sg;->c:Lcom/shabakaty/downloader/eg0$a;

    return-object v0
.end method

.method public b()Lcom/shabakaty/downloader/zz1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/zz1<",
            "Lcom/shabakaty/downloader/eg0$e$d$a$b$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sg;->e:Lcom/shabakaty/downloader/zz1;

    return-object v0
.end method

.method public c()Lcom/shabakaty/downloader/eg0$e$d$a$b$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sg;->b:Lcom/shabakaty/downloader/eg0$e$d$a$b$b;

    return-object v0
.end method

.method public d()Lcom/shabakaty/downloader/eg0$e$d$a$b$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sg;->d:Lcom/shabakaty/downloader/eg0$e$d$a$b$c;

    return-object v0
.end method

.method public e()Lcom/shabakaty/downloader/zz1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/zz1<",
            "Lcom/shabakaty/downloader/eg0$e$d$a$b$d;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sg;->a:Lcom/shabakaty/downloader/zz1;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/shabakaty/downloader/eg0$e$d$a$b;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 2
    check-cast p1, Lcom/shabakaty/downloader/eg0$e$d$a$b;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/sg;->a:Lcom/shabakaty/downloader/zz1;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/eg0$e$d$a$b;->e()Lcom/shabakaty/downloader/zz1;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/eg0$e$d$a$b;->e()Lcom/shabakaty/downloader/zz1;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/zz1;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    iget-object v1, p0, Lcom/shabakaty/downloader/sg;->b:Lcom/shabakaty/downloader/eg0$e$d$a$b$b;

    if-nez v1, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/eg0$e$d$a$b;->c()Lcom/shabakaty/downloader/eg0$e$d$a$b$b;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/eg0$e$d$a$b;->c()Lcom/shabakaty/downloader/eg0$e$d$a$b$b;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_1
    iget-object v1, p0, Lcom/shabakaty/downloader/sg;->c:Lcom/shabakaty/downloader/eg0$a;

    if-nez v1, :cond_3

    .line 5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/eg0$e$d$a$b;->a()Lcom/shabakaty/downloader/eg0$a;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/eg0$e$d$a$b;->a()Lcom/shabakaty/downloader/eg0$a;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_2
    iget-object v1, p0, Lcom/shabakaty/downloader/sg;->d:Lcom/shabakaty/downloader/eg0$e$d$a$b$c;

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/eg0$e$d$a$b;->d()Lcom/shabakaty/downloader/eg0$e$d$a$b$c;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/shabakaty/downloader/sg;->e:Lcom/shabakaty/downloader/zz1;

    .line 7
    invoke-virtual {p1}, Lcom/shabakaty/downloader/eg0$e$d$a$b;->b()Lcom/shabakaty/downloader/zz1;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/zz1;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_5
    return v2
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sg;->a:Lcom/shabakaty/downloader/zz1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/zz1;->hashCode()I

    move-result v0

    :goto_0
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int v0, v0, v2

    .line 2
    iget-object v3, p0, Lcom/shabakaty/downloader/sg;->b:Lcom/shabakaty/downloader/eg0$e$d$a$b$b;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 3
    iget-object v3, p0, Lcom/shabakaty/downloader/sg;->c:Lcom/shabakaty/downloader/eg0$a;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    xor-int/2addr v0, v1

    mul-int v0, v0, v2

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/sg;->d:Lcom/shabakaty/downloader/eg0$e$d$a$b$c;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int v0, v0, v2

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/sg;->e:Lcom/shabakaty/downloader/zz1;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/zz1;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Execution{threads="

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/sg;->a:Lcom/shabakaty/downloader/zz1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/sg;->b:Lcom/shabakaty/downloader/eg0$e$d$a$b$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", appExitInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/sg;->c:Lcom/shabakaty/downloader/eg0$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", signal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/sg;->d:Lcom/shabakaty/downloader/eg0$e$d$a$b$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", binaries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/sg;->e:Lcom/shabakaty/downloader/zz1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
