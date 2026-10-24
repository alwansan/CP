.class public final Lcom/google/android/gms/common/api/internal/c$b;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.4.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/j9;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/j9<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Lcom/shabakaty/downloader/ia1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/j9;Lcom/shabakaty/downloader/ia1;Lcom/google/android/gms/common/api/internal/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/c$b;->a:Lcom/shabakaty/downloader/j9;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/c$b;->b:Lcom/shabakaty/downloader/ia1;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    instance-of v1, p1, Lcom/google/android/gms/common/api/internal/c$b;

    if-eqz v1, :cond_0

    .line 2
    check-cast p1, Lcom/google/android/gms/common/api/internal/c$b;

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/c$b;->a:Lcom/shabakaty/downloader/j9;

    iget-object v2, p1, Lcom/google/android/gms/common/api/internal/c$b;->a:Lcom/shabakaty/downloader/j9;

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/q43;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/c$b;->b:Lcom/shabakaty/downloader/ia1;

    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/c$b;->b:Lcom/shabakaty/downloader/ia1;

    .line 4
    invoke-static {v1, p1}, Lcom/shabakaty/downloader/q43;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/c$b;->a:Lcom/shabakaty/downloader/j9;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/c$b;->b:Lcom/shabakaty/downloader/ia1;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/q43$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/q43$a;-><init>(Ljava/lang/Object;Lcom/shabakaty/downloader/cl3;)V

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/c$b;->a:Lcom/shabakaty/downloader/j9;

    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Lcom/shabakaty/downloader/q43$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/q43$a;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/c$b;->b:Lcom/shabakaty/downloader/ia1;

    const-string v2, "feature"

    invoke-virtual {v0, v2, v1}, Lcom/shabakaty/downloader/q43$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/q43$a;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/q43$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
