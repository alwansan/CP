.class public final Lcom/shabakaty/downloader/o80;
.super Ljava/lang/Object;
.source "Component.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/o80$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "-TT;>;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/eq0;",
            ">;"
        }
    .end annotation
.end field

.field public final c:I

.field public final d:I

.field public final e:Lcom/shabakaty/downloader/t80;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/t80<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;IILcom/shabakaty/downloader/t80;Ljava/util/Set;Lcom/shabakaty/downloader/o80$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/o80;->a:Ljava/util/Set;

    .line 3
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/o80;->b:Ljava/util/Set;

    .line 4
    iput p3, p0, Lcom/shabakaty/downloader/o80;->c:I

    .line 5
    iput p4, p0, Lcom/shabakaty/downloader/o80;->d:I

    .line 6
    iput-object p5, p0, Lcom/shabakaty/downloader/o80;->e:Lcom/shabakaty/downloader/t80;

    .line 7
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/o80;->f:Ljava/util/Set;

    return-void
.end method

.method public static a(Ljava/lang/Class;)Lcom/shabakaty/downloader/o80$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/shabakaty/downloader/o80$b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/o80$b;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/shabakaty/downloader/o80$b;-><init>(Ljava/lang/Class;[Ljava/lang/Class;Lcom/shabakaty/downloader/o80$a;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Class;)Lcom/shabakaty/downloader/o80$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/shabakaty/downloader/o80$b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/o80;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/o80$b;

    move-result-object p0

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/o80$b;->d:I

    return-object p0
.end method

.method public static varargs d(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/shabakaty/downloader/o80;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lcom/shabakaty/downloader/o80<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/o80$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/shabakaty/downloader/o80$b;-><init>(Ljava/lang/Class;[Ljava/lang/Class;Lcom/shabakaty/downloader/o80$a;)V

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/n80;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/shabakaty/downloader/n80;-><init>(Ljava/lang/Object;I)V

    .line 3
    iput-object p1, v0, Lcom/shabakaty/downloader/o80$b;->e:Lcom/shabakaty/downloader/t80;

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/o80$b;->b()Lcom/shabakaty/downloader/o80;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public c()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/o80;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Component<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/shabakaty/downloader/o80;->a:Ljava/util/Set;

    .line 2
    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">{"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shabakaty/downloader/o80;->c:I

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shabakaty/downloader/o80;->d:I

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deps="

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/o80;->b:Ljava/util/Set;

    .line 8
    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
