.class public final Lcom/shabakaty/downloader/i77;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.1"

# interfaces
.implements Lcom/shabakaty/downloader/g77;


# static fields
.field public static final a:Lcom/shabakaty/downloader/on6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/on6<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/shabakaty/downloader/in6;

    const-string v1, "com.google.android.gms.measurement"

    .line 1
    invoke-static {v1}, Lcom/shabakaty/downloader/lm6;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/in6;-><init>(Landroid/net/Uri;)V

    const-string v1, "measurement.client.consent_state_v1"

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/in6;->b(Ljava/lang/String;Z)Lcom/shabakaty/downloader/on6;

    const-string v1, "measurement.client.3p_consent_state_v1"

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/in6;->b(Ljava/lang/String;Z)Lcom/shabakaty/downloader/on6;

    const-string v1, "measurement.service.consent_state_v1_W36"

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/in6;->b(Ljava/lang/String;Z)Lcom/shabakaty/downloader/on6;

    const-string v1, "measurement.id.service.consent_state_v1_W36"

    const-wide/16 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, v2, v3}, Lcom/shabakaty/downloader/in6;->a(Ljava/lang/String;J)Lcom/shabakaty/downloader/on6;

    const-string v1, "measurement.service.storage_consent_support_version"

    const-wide/32 v2, 0x31b50

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Lcom/shabakaty/downloader/in6;->a(Ljava/lang/String;J)Lcom/shabakaty/downloader/on6;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/i77;->a:Lcom/shabakaty/downloader/on6;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    sget-object v0, Lcom/shabakaty/downloader/i77;->a:Lcom/shabakaty/downloader/on6;

    .line 1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/on6;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
