# pragma D option quiet

fbt:kernel:if_input:entry
{
    printf("Entering if_input...\n");
    this->m = (struct mbuf *)arg1;
    printf("mbuf address %p\n", this->m);
    printf("  m_len: %d\n", this->m->m_len);
    printf("  m_type: %u\n", this->m->m_type);
    printf("  m_flags: %u\n", this->m->m_flags);
    printf("  m_data: %p\n", this->m->m_data);
    printf("  m_next: %p\n", this->m->m_next);
    printf("  m_pkthdr.len: %d\n", this->m->m_pkthdr.len);
    printf("  m_pkthdr.csum_flags: %u\n", this->m->m_pkthdr.csum_flags);
    printf("  m_pkthdr.flowid: %u\n", this->m->m_pkthdr.flowid);
    printf("  m_pkthdr.fibnum: %u\n", this->m->m_pkthdr.fibnum);
    printf("  m_pkthdr.numa_domain: %u\n", this->m->m_pkthdr.numa_domain);
    printf("  m_pkthdr.rsstype: %u\n", this->m->m_pkthdr.rsstype);
}
