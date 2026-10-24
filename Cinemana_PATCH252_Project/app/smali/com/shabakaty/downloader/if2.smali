.class public Lcom/shabakaty/downloader/if2;
.super Lcom/shabakaty/downloader/x0;
.source "com.google.android.gms:play-services-cast@@19.0.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/downloader/if2;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public r:Z

.field public s:Ljava/lang/String;

.field public t:Z

.field public u:Lcom/shabakaty/downloader/sg0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ep5;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ep5;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/if2;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/yw;->a:Ljava/util/regex/Pattern;

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v4, 0x2d

    if-nez v3, :cond_0

    .line 11
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    :cond_0
    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 14
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    const/4 v2, 0x0

    .line 17
    iput-boolean v2, p0, Lcom/shabakaty/downloader/if2;->r:Z

    .line 18
    iput-object v0, p0, Lcom/shabakaty/downloader/if2;->s:Ljava/lang/String;

    .line 19
    iput-boolean v2, p0, Lcom/shabakaty/downloader/if2;->t:Z

    .line 20
    iput-object v1, p0, Lcom/shabakaty/downloader/if2;->u:Lcom/shabakaty/downloader/sg0;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;ZLcom/shabakaty/downloader/sg0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/shabakaty/downloader/if2;->r:Z

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/if2;->s:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Lcom/shabakaty/downloader/if2;->t:Z

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/if2;->u:Lcom/shabakaty/downloader/sg0;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/shabakaty/downloader/if2;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/if2;

    .line 3
    iget-boolean v1, p0, Lcom/shabakaty/downloader/if2;->r:Z

    iget-boolean v3, p1, Lcom/shabakaty/downloader/if2;->r:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/if2;->s:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/downloader/if2;->s:Ljava/lang/String;

    .line 4
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/shabakaty/downloader/if2;->t:Z

    iget-boolean v3, p1, Lcom/shabakaty/downloader/if2;->t:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/if2;->u:Lcom/shabakaty/downloader/sg0;

    iget-object p1, p1, Lcom/shabakaty/downloader/if2;->u:Lcom/shabakaty/downloader/sg0;

    .line 5
    invoke-static {v1, p1}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-boolean v1, p0, Lcom/shabakaty/downloader/if2;->r:Z

    .line 2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/if2;->s:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/shabakaty/downloader/if2;->t:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/if2;->u:Lcom/shabakaty/downloader/sg0;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-boolean v1, p0, Lcom/shabakaty/downloader/if2;->r:Z

    .line 2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/if2;->s:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/shabakaty/downloader/if2;->t:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "LaunchOptions(relaunchIfRunning=%b, language=%s, androidReceiverCompatible: %b)"

    .line 3
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/16 v0, 0x4f45

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/vw3;->n(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x2

    .line 2
    iget-boolean v2, p0, Lcom/shabakaty/downloader/if2;->r:Z

    const/4 v3, 0x4

    .line 3
    invoke-static {p1, v1, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x3

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/if2;->s:Ljava/lang/String;

    const/4 v4, 0x0

    .line 6
    invoke-static {p1, v1, v2, v4}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 7
    iget-boolean v1, p0, Lcom/shabakaty/downloader/if2;->t:Z

    .line 8
    invoke-static {p1, v3, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 9
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x5

    .line 10
    iget-object v2, p0, Lcom/shabakaty/downloader/if2;->u:Lcom/shabakaty/downloader/sg0;

    .line 11
    invoke-static {p1, v1, v2, p2, v4}, Lcom/shabakaty/downloader/vw3;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 12
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/vw3;->q(Landroid/os/Parcel;I)V

    return-void
.end method
