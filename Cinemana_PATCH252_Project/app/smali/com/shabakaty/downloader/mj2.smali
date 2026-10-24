.class public Lcom/shabakaty/downloader/mj2;
.super Lcom/shabakaty/downloader/lj2;
.source "LoaderManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/mj2$c;,
        Lcom/shabakaty/downloader/mj2$b;,
        Lcom/shabakaty/downloader/mj2$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/rh2;

.field public final b:Lcom/shabakaty/downloader/mj2$c;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/rh2;Lcom/shabakaty/downloader/r35;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/lj2;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/mj2;->a:Lcom/shabakaty/downloader/rh2;

    .line 3
    sget-object p1, Lcom/shabakaty/downloader/mj2$c;->c:Landroidx/lifecycle/n$b;

    const-class v0, Lcom/shabakaty/downloader/mj2$c;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    .line 5
    invoke-static {v2, v1}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v2, p2, Lcom/shabakaty/downloader/r35;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/o35;

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    instance-of p2, p1, Landroidx/lifecycle/n$e;

    if-eqz p2, :cond_2

    .line 9
    check-cast p1, Landroidx/lifecycle/n$e;

    invoke-virtual {p1, v2}, Landroidx/lifecycle/n$e;->b(Lcom/shabakaty/downloader/o35;)V

    goto :goto_1

    .line 10
    :cond_0
    instance-of v2, p1, Landroidx/lifecycle/n$c;

    if-eqz v2, :cond_1

    .line 11
    check-cast p1, Landroidx/lifecycle/n$c;

    invoke-virtual {p1, v1, v0}, Landroidx/lifecycle/n$c;->c(Ljava/lang/String;Ljava/lang/Class;)Lcom/shabakaty/downloader/o35;

    move-result-object p1

    goto :goto_0

    .line 12
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/mj2$c$a;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/mj2$c$a;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/o35;

    move-result-object p1

    :goto_0
    move-object v2, p1

    .line 13
    iget-object p1, p2, Lcom/shabakaty/downloader/r35;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/o35;

    if-eqz p1, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/shabakaty/downloader/o35;->onCleared()V

    .line 15
    :cond_2
    :goto_1
    check-cast v2, Lcom/shabakaty/downloader/mj2$c;

    .line 16
    iput-object v2, p0, Lcom/shabakaty/downloader/mj2;->b:Lcom/shabakaty/downloader/mj2$c;

    return-void

    .line 17
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/shabakaty/downloader/mj2;->b:Lcom/shabakaty/downloader/mj2$c;

    .line 2
    iget-object p4, p2, Lcom/shabakaty/downloader/mj2$c;->a:Lcom/shabakaty/downloader/w94;

    invoke-virtual {p4}, Lcom/shabakaty/downloader/w94;->i()I

    move-result p4

    if-lez p4, :cond_6

    .line 3
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Loaders:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, p2, Lcom/shabakaty/downloader/mj2$c;->a:Lcom/shabakaty/downloader/w94;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/w94;->i()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 6
    iget-object v2, p2, Lcom/shabakaty/downloader/mj2$c;->a:Lcom/shabakaty/downloader/w94;

    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/w94;->j(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/mj2$a;

    .line 7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p2, Lcom/shabakaty/downloader/mj2$c;->a:Lcom/shabakaty/downloader/w94;

    invoke-virtual {v3, v1}, Lcom/shabakaty/downloader/w94;->g(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    .line 8
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/shabakaty/downloader/mj2$a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mId="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v2, Lcom/shabakaty/downloader/mj2$a;->a:I

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, " mArgs="

    .line 10
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/shabakaty/downloader/mj2$a;->b:Landroid/os/Bundle;

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "mLoader="

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/shabakaty/downloader/mj2$a;->c:Lcom/shabakaty/downloader/jj2;

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 12
    iget-object v4, v2, Lcom/shabakaty/downloader/mj2$a;->c:Lcom/shabakaty/downloader/jj2;

    const-string v5, "  "

    invoke-static {p4, v5}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    check-cast v4, Lcom/shabakaty/downloader/pd;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v4, Lcom/shabakaty/downloader/jj2;->a:I

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " mListener="

    .line 14
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v4, Lcom/shabakaty/downloader/jj2;->b:Lcom/shabakaty/downloader/jj2$a;

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 15
    iget-boolean v3, v4, Lcom/shabakaty/downloader/jj2;->c:Z

    const-string v7, "mStarted="

    if-nez v3, :cond_0

    iget-boolean v3, v4, Lcom/shabakaty/downloader/jj2;->f:Z

    if-nez v3, :cond_0

    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, v4, Lcom/shabakaty/downloader/jj2;->c:Z

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string v3, " mContentChanged="

    .line 17
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, v4, Lcom/shabakaty/downloader/jj2;->f:Z

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string v3, " mProcessingChange="

    .line 18
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 19
    :goto_1
    iget-boolean v3, v4, Lcom/shabakaty/downloader/jj2;->d:Z

    if-nez v3, :cond_1

    iget-boolean v3, v4, Lcom/shabakaty/downloader/jj2;->e:Z

    if-eqz v3, :cond_2

    .line 20
    :cond_1
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mAbandoned="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, v4, Lcom/shabakaty/downloader/jj2;->d:Z

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string v3, " mReset="

    .line 21
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, v4, Lcom/shabakaty/downloader/jj2;->e:Z

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 22
    :cond_2
    iget-object v3, v4, Lcom/shabakaty/downloader/pd;->h:Lcom/shabakaty/downloader/pd$a;

    const-string v8, " waiting="

    if-eqz v3, :cond_3

    .line 23
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mTask="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v4, Lcom/shabakaty/downloader/pd;->h:Lcom/shabakaty/downloader/pd$a;

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 24
    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v4, Lcom/shabakaty/downloader/pd;->h:Lcom/shabakaty/downloader/pd$a;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 25
    :cond_3
    iget-object v3, v4, Lcom/shabakaty/downloader/pd;->i:Lcom/shabakaty/downloader/pd$a;

    if-eqz v3, :cond_4

    .line 26
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mCancellingTask="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v4, Lcom/shabakaty/downloader/pd;->i:Lcom/shabakaty/downloader/pd$a;

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 27
    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v4, Lcom/shabakaty/downloader/pd;->i:Lcom/shabakaty/downloader/pd$a;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 28
    :cond_4
    iget-object v3, v2, Lcom/shabakaty/downloader/mj2$a;->e:Lcom/shabakaty/downloader/mj2$b;

    if-eqz v3, :cond_5

    .line 29
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mCallbacks="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/shabakaty/downloader/mj2$a;->e:Lcom/shabakaty/downloader/mj2$b;

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 30
    iget-object v3, v2, Lcom/shabakaty/downloader/mj2$a;->e:Lcom/shabakaty/downloader/mj2$b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "mDeliveredData="

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, v3, Lcom/shabakaty/downloader/mj2$b;->b:Z

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 32
    :cond_5
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mData="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 33
    iget-object v3, v2, Lcom/shabakaty/downloader/mj2$a;->c:Lcom/shabakaty/downloader/jj2;

    .line 34
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v5, 0x40

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 36
    invoke-static {v4, v3}, Lcom/shabakaty/downloader/cl3;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v4, "}"

    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 39
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->hasActiveObservers()Z

    move-result v2

    .line 42
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Z)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const/16 v0, 0x80

    const-string v1, "LoaderManager{"

    .line 1
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/ei;->a(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/mj2;->a:Lcom/shabakaty/downloader/rh2;

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/cl3;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, "}}"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
