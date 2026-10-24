.class public final Lcom/shabakaty/downloader/wa7;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.1"

# interfaces
.implements Lcom/shabakaty/downloader/ua7;


# static fields
.field public static final a:Lcom/shabakaty/downloader/on6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/on6<",
            "Ljava/lang/Boolean;",
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

    const-string v1, "measurement.validation.internal_limits_internal_event_params"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/in6;->b(Ljava/lang/String;Z)Lcom/shabakaty/downloader/on6;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/wa7;->a:Lcom/shabakaty/downloader/on6;

    const-string v1, "measurement.id.validation.internal_limits_internal_event_params"

    const-wide/16 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Lcom/shabakaty/downloader/in6;->a(Ljava/lang/String;J)Lcom/shabakaty/downloader/on6;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/wa7;->a:Lcom/shabakaty/downloader/on6;

    .line 1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/on6;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
