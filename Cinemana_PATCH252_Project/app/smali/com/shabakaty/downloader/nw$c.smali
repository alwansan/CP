.class public final Lcom/shabakaty/downloader/nw$c;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast@@19.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/nw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/nw$c$a;
    }
.end annotation


# instance fields
.field public final r:Lcom/google/android/gms/cast/CastDevice;

.field public final s:Lcom/shabakaty/downloader/nw$d;

.field public final t:Landroid/os/Bundle;

.field public final u:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/nw$c$a;Lcom/shabakaty/downloader/h56;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p2, p1, Lcom/shabakaty/downloader/nw$c$a;->a:Lcom/google/android/gms/cast/CastDevice;

    iput-object p2, p0, Lcom/shabakaty/downloader/nw$c;->r:Lcom/google/android/gms/cast/CastDevice;

    .line 3
    iget-object p2, p1, Lcom/shabakaty/downloader/nw$c$a;->b:Lcom/shabakaty/downloader/nw$d;

    iput-object p2, p0, Lcom/shabakaty/downloader/nw$c;->s:Lcom/shabakaty/downloader/nw$d;

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/nw$c$a;->c:Landroid/os/Bundle;

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/nw$c;->t:Landroid/os/Bundle;

    .line 6
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/nw$c;->u:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/shabakaty/downloader/nw$c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/nw$c;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/nw$c;->r:Lcom/google/android/gms/cast/CastDevice;

    iget-object v3, p1, Lcom/shabakaty/downloader/nw$c;->r:Lcom/google/android/gms/cast/CastDevice;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/q43;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/shabakaty/downloader/nw$c;->t:Landroid/os/Bundle;

    iget-object v3, p1, Lcom/shabakaty/downloader/nw$c;->t:Landroid/os/Bundle;

    if-eqz v1, :cond_6

    if-nez v3, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v4

    invoke-virtual {v3}, Landroid/os/Bundle;->size()I

    move-result v5

    if-eq v4, v5, :cond_3

    goto :goto_1

    .line 5
    :cond_3
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 6
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    .line 7
    :cond_4
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 8
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/shabakaty/downloader/q43;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_1

    :cond_6
    :goto_0
    if-eq v1, v3, :cond_7

    :goto_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_7
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_8

    .line 9
    iget-object v1, p0, Lcom/shabakaty/downloader/nw$c;->u:Ljava/lang/String;

    iget-object p1, p1, Lcom/shabakaty/downloader/nw$c;->u:Ljava/lang/String;

    .line 10
    invoke-static {v1, p1}, Lcom/shabakaty/downloader/q43;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    return v0

    :cond_8
    return v2
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/shabakaty/downloader/nw$c;->r:Lcom/google/android/gms/cast/CastDevice;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/nw$c;->t:Landroid/os/Bundle;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/nw$c;->u:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
