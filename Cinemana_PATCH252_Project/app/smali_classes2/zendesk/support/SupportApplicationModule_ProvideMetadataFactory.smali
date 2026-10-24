.class public final Lzendesk/support/SupportApplicationModule_ProvideMetadataFactory;
.super Ljava/lang/Object;
.source "SupportApplicationModule_ProvideMetadataFactory.java"

# interfaces
.implements Lcom/shabakaty/downloader/oj3;


# instance fields
.field public final contextProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final module:Lzendesk/support/SupportApplicationModule;


# direct methods
.method public constructor <init>(Lzendesk/support/SupportApplicationModule;Lcom/shabakaty/downloader/oj3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/SupportApplicationModule;",
            "Lcom/shabakaty/downloader/oj3<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/SupportApplicationModule_ProvideMetadataFactory;->module:Lzendesk/support/SupportApplicationModule;

    .line 3
    iput-object p2, p0, Lzendesk/support/SupportApplicationModule_ProvideMetadataFactory;->contextProvider:Lcom/shabakaty/downloader/oj3;

    return-void
.end method

.method public static create(Lzendesk/support/SupportApplicationModule;Lcom/shabakaty/downloader/oj3;)Lzendesk/support/SupportApplicationModule_ProvideMetadataFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/SupportApplicationModule;",
            "Lcom/shabakaty/downloader/oj3<",
            "Landroid/content/Context;",
            ">;)",
            "Lzendesk/support/SupportApplicationModule_ProvideMetadataFactory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lzendesk/support/SupportApplicationModule_ProvideMetadataFactory;

    invoke-direct {v0, p0, p1}, Lzendesk/support/SupportApplicationModule_ProvideMetadataFactory;-><init>(Lzendesk/support/SupportApplicationModule;Lcom/shabakaty/downloader/oj3;)V

    return-object v0
.end method

.method public static provideMetadata(Lzendesk/support/SupportApplicationModule;Landroid/content/Context;)Lzendesk/support/SupportSdkMetadata;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lzendesk/support/SupportApplicationModule;->provideMetadata(Landroid/content/Context;)Lzendesk/support/SupportSdkMetadata;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 2
    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/support/SupportApplicationModule_ProvideMetadataFactory;->get()Lzendesk/support/SupportSdkMetadata;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/support/SupportSdkMetadata;
    .locals 2

    .line 2
    iget-object v0, p0, Lzendesk/support/SupportApplicationModule_ProvideMetadataFactory;->module:Lzendesk/support/SupportApplicationModule;

    iget-object v1, p0, Lzendesk/support/SupportApplicationModule_ProvideMetadataFactory;->contextProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v1}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lzendesk/support/SupportApplicationModule_ProvideMetadataFactory;->provideMetadata(Lzendesk/support/SupportApplicationModule;Landroid/content/Context;)Lzendesk/support/SupportSdkMetadata;

    move-result-object v0

    return-object v0
.end method
