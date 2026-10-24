.class public final Lcom/shabakaty/downloader/gh5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast@@19.0.0"


# static fields
.field public static final a:Lcom/shabakaty/downloader/ia1;

.field public static final b:Lcom/shabakaty/downloader/ia1;

.field public static final c:Lcom/shabakaty/downloader/ia1;

.field public static final d:[Lcom/shabakaty/downloader/ia1;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ia1;

    const-string v1, "client_side_logging"

    const-wide/16 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/shabakaty/downloader/ia1;-><init>(Ljava/lang/String;J)V

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/ia1;

    const-string v4, "cxless_client_minimal"

    invoke-direct {v1, v4, v2, v3}, Lcom/shabakaty/downloader/ia1;-><init>(Ljava/lang/String;J)V

    sput-object v1, Lcom/shabakaty/downloader/gh5;->a:Lcom/shabakaty/downloader/ia1;

    .line 3
    new-instance v4, Lcom/shabakaty/downloader/ia1;

    const-string v5, "cxless_caf_control"

    invoke-direct {v4, v5, v2, v3}, Lcom/shabakaty/downloader/ia1;-><init>(Ljava/lang/String;J)V

    .line 4
    new-instance v5, Lcom/shabakaty/downloader/ia1;

    const-string v6, "module_flag_control"

    invoke-direct {v5, v6, v2, v3}, Lcom/shabakaty/downloader/ia1;-><init>(Ljava/lang/String;J)V

    sput-object v5, Lcom/shabakaty/downloader/gh5;->b:Lcom/shabakaty/downloader/ia1;

    .line 5
    new-instance v6, Lcom/shabakaty/downloader/ia1;

    const-string v7, "discovery_hint_supply"

    invoke-direct {v6, v7, v2, v3}, Lcom/shabakaty/downloader/ia1;-><init>(Ljava/lang/String;J)V

    .line 6
    new-instance v7, Lcom/shabakaty/downloader/ia1;

    const-string v8, "relay_casting_set_active_account"

    invoke-direct {v7, v8, v2, v3}, Lcom/shabakaty/downloader/ia1;-><init>(Ljava/lang/String;J)V

    .line 7
    new-instance v8, Lcom/shabakaty/downloader/ia1;

    const-string v9, "analytics_proto_enum_translation"

    invoke-direct {v8, v9, v2, v3}, Lcom/shabakaty/downloader/ia1;-><init>(Ljava/lang/String;J)V

    sput-object v8, Lcom/shabakaty/downloader/gh5;->c:Lcom/shabakaty/downloader/ia1;

    const/4 v2, 0x7

    new-array v2, v2, [Lcom/shabakaty/downloader/ia1;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v4, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v6, v2, v0

    const/4 v0, 0x5

    aput-object v7, v2, v0

    const/4 v0, 0x6

    aput-object v8, v2, v0

    .line 8
    sput-object v2, Lcom/shabakaty/downloader/gh5;->d:[Lcom/shabakaty/downloader/ia1;

    return-void
.end method
