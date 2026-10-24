.class public final Lzendesk/support/GuideProviderModule_ProvideDeviceLocaleFactory;
.super Ljava/lang/Object;
.source "GuideProviderModule_ProvideDeviceLocaleFactory.java"

# interfaces
.implements Lcom/shabakaty/downloader/oj3;


# instance fields
.field public final module:Lzendesk/support/GuideProviderModule;


# direct methods
.method public constructor <init>(Lzendesk/support/GuideProviderModule;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/GuideProviderModule_ProvideDeviceLocaleFactory;->module:Lzendesk/support/GuideProviderModule;

    return-void
.end method

.method public static create(Lzendesk/support/GuideProviderModule;)Lzendesk/support/GuideProviderModule_ProvideDeviceLocaleFactory;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/support/GuideProviderModule_ProvideDeviceLocaleFactory;

    invoke-direct {v0, p0}, Lzendesk/support/GuideProviderModule_ProvideDeviceLocaleFactory;-><init>(Lzendesk/support/GuideProviderModule;)V

    return-object v0
.end method

.method public static provideDeviceLocale(Lzendesk/support/GuideProviderModule;)Ljava/util/Locale;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/support/GuideProviderModule;->provideDeviceLocale()Ljava/util/Locale;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 2
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/support/GuideProviderModule_ProvideDeviceLocaleFactory;->get()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/Locale;
    .locals 1

    .line 2
    iget-object v0, p0, Lzendesk/support/GuideProviderModule_ProvideDeviceLocaleFactory;->module:Lzendesk/support/GuideProviderModule;

    invoke-static {v0}, Lzendesk/support/GuideProviderModule_ProvideDeviceLocaleFactory;->provideDeviceLocale(Lzendesk/support/GuideProviderModule;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method
